#!/usr/bin/env bash
# Downloads the files listed in mods.lock.tsv (mods) and, if it exists, datapacks.lock.tsv (data packs)
# from their original source (Modrinth) and verifies their SHA-512 hash.
# Only downloads what is missing or does not match the hash.
set -euo pipefail
cd "$(dirname "$0")"

LOCK="mods.lock.tsv"
DATAPACKS_LOCK="datapacks.lock.tsv"
UA="rxdo5/MCServerKits"

[[ -f "$LOCK" ]] || { echo "$LOCK not found" >&2; exit 1; }

if command -v sha512sum >/dev/null 2>&1; then
  sha512() { sha512sum "$1" | cut -d' ' -f1; }
elif command -v shasum >/dev/null 2>&1; then
  sha512() { shasum -a 512 "$1" | cut -d' ' -f1; }
else
  echo "sha512sum or shasum is required." >&2; exit 1
fi

download() { # download URL DESTINATION
  if command -v curl >/dev/null 2>&1; then
    curl -fsSL -A "$UA" -o "$2" "$1"
  elif command -v wget >/dev/null 2>&1; then
    wget -q -U "$UA" -O "$2" "$1"
  else
    echo "curl or wget is required." >&2; return 1
  fi
}

sync_files() { # sync_files LOCKFILE DESTINATION_DIR
  local lock="$1" dir="$2" name sha url dest
  mkdir -p "$dir"
  while IFS=$'\t' read -r name sha url; do
    [[ -z "${name:-}" || "$name" == \#* ]] && continue
    dest="$dir/$name"
    if [[ -f "$dest" && "$(sha512 "$dest")" == "$sha" ]]; then continue; fi
    echo "Downloading $name"
    if ! download "$url" "$dest.part"; then
      rm -f "$dest.part"
      echo "Could not download $name" >&2
      exit 1
    fi
    if [[ "$(sha512 "$dest.part")" != "$sha" ]]; then
      rm -f "$dest.part"
      echo "Hash mismatch: $name" >&2
      exit 1
    fi
    mv -f "$dest.part" "$dest"
  done < <(tr -d '\r' < "$lock")
}

sync_files "$LOCK" "mods"
echo "Mods are up to date."

# Data packs (optional): they go in <level-name>/datapacks so Minecraft loads them automatically,
# even before the world has been created.
if [[ -f "$DATAPACKS_LOCK" ]]; then
  LEVEL="world"
  if [[ -f server.properties ]]; then
    value="$(grep -E '^level-name=' server.properties | head -n1 | cut -d= -f2- | tr -d '\r' || true)"
    [[ -n "$value" ]] && LEVEL="$value"
  fi
  sync_files "$DATAPACKS_LOCK" "$LEVEL/datapacks"
  echo "Data packs are up to date."
fi

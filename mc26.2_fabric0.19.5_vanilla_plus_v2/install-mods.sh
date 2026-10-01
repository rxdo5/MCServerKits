#!/usr/bin/env bash
# Downloads the mods listed in mods.lock.tsv from their original source (Modrinth)
# and verifies their SHA-512 hash. Only downloads what is missing or does not match the hash.
set -euo pipefail
cd "$(dirname "$0")"

LOCK="mods.lock.tsv"
UA="rxdo5/MCServerKits"

[[ -f "$LOCK" ]] || { echo "$LOCK not found" >&2; exit 1; }
mkdir -p mods

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

while IFS=$'\t' read -r name sha url; do
  [[ -z "${name:-}" || "$name" == \#* ]] && continue
  dest="mods/$name"
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
done < <(tr -d '\r' < "$LOCK")

echo "Mods are up to date."

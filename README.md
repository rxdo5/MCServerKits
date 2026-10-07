# 🎮 MCServerKits

> **Ready-to-use Minecraft server kits — download, configure and play.**

## ⚠️ IMPORTANT — MINECRAFT EULA

> **BY DOWNLOADING OR USING ANY SERVER KIT FROM THIS REPOSITORY, YOU ACKNOWLEDGE THAT YOU MUST COMPLY WITH THE [MINECRAFT END USER LICENSE AGREEMENT (EULA)](https://www.minecraft.net/eula).**
>
> **Downloading a server kit does not grant you any additional rights to Minecraft or its assets. You are responsible for ensuring that your use of Minecraft and the server kit complies with the applicable Minecraft EULA and other applicable terms.**
>
> **Please read the Minecraft EULA before downloading or using any server kit.**
>
>**Servers must also comply with Mojang's Minecraft Usage Guidelines. Please refer to [Minecraft Usage Guidelines](https://www.minecraft.net/en-us/usage-guidelines) for more information.**
>

---

MCServerKits is a collection of **pre-built Minecraft server setups** designed to make deploying a Minecraft server as simple as possible.

Each kit comes with its configuration and start scripts, allowing you to get your server running with minimal setup. The mods and data packs are **not** stored in this repository: they are downloaded automatically from their original source ([Modrinth](https://modrinth.com)) the first time you start the server, and each file is verified with a SHA-512 hash.

---

## ✨ Features

* 🚀 **Ready to use** — Download a kit and start your server.
* ⚙️ **Pre-configured** — Server files and configurations are prepared for you.
* 📥 **Automatic mod and data pack download** — Mods and data packs are fetched from their original source on first start (internet connection required).
* 🧩 **Multiple server types** — Support for different Minecraft server configurations.
* 🖥️ **Cross-platform** — Run your server on Windows, Linux and macOS.
* 📦 **Simple setup** — No complicated installation process.
* 🔧 **ServerStarterJar** — Automatic server installation for supported Forge and NeoForge versions.

---

## 📥 Installation

### 1. Download

Download the server kit you want from this repository.

> ⚠️ **By downloading or using a server kit, you acknowledge that you are responsible for complying with the Minecraft EULA and any other applicable terms.**

### 2. Configure

If the kit contains a `variables.txt` file, check its configuration before starting the server.

If you have:

```text
JAVA=java
```

set in `variables.txt`, a suitable Java version for the Minecraft server will be installed automatically.

---

## ▶️ Starting the Server

### 🐧 Linux

Run:

```bash
./start.sh
```

or:

```bash
bash start.sh
```

### 🪟 Windows

Run:

```text
start.bat
```

> ⚠️ **Do not delete the `.ps1` PowerShell files.**

You can also run `start.ps1` manually from a PowerShell console, but using `start.bat` is recommended.

**TL;DR: `start.bat` > `start.ps1`**

### 🍎 macOS

Run:

```bash
./start.sh
```

or:

```bash
bash start.sh
```

---

## ⚠️ Forge & NeoForge

For **Forge and NeoForge 1.17+**, `run.*` scripts may be created automatically by `ServerStarterJar`.

These files are safe to ignore. Continue using the provided `start.*` scripts.

> ❗ **Do not delete the `run.*` scripts.**
>
> Deleting them may cause the server to be installed again by `ServerStarterJar`.

More information about ServerStarterJar:

https://github.com/neoforged/ServerStarterJar

---

## 🕵️ Hiding Your Server IP (Optional)

By default, players connect straight to the public IP of the machine running the server. If you don't want to share your home IP, put a relay in front of the server so players only ever see the relay's address.

| Option | Hides your IP? | Java | Bedrock (Geyser) | Notes |
| ------ | :------------: | :--: | :--------------: | ----- |
| **[playit.gg](https://playit.gg) tunnel** | ✅ | ✅ | ✅ | Free tier available. No port forwarding needed and it works behind CGNAT. **Easiest option.** |
| **[TCPShield](https://tcpshield.com)** | ✅ | ✅ | ⚠️ | Free Java proxy with DDoS protection. Bedrock/Geyser support depends on the plan, so check their current plans. |
| **Cheap VPS + reverse proxy** | ✅ | ✅ | ✅ | HAProxy, Nginx `stream` or a WireGuard tunnel to your machine. Most control, but it costs a few dollars a month. |
| **Domain + SRV record** | ❌ | — | — | Gives you a nice address (`play.example.com`), but DNS still points to your IP. Combine it with one of the options above. |

### Quick start with playit.gg

1. Create a free account on [playit.gg](https://playit.gg), then download and run the agent on the machine that hosts the server.
2. Create a **Minecraft Java** tunnel pointing to port `25565`.
3. If you use Geyser, also create a **Minecraft Bedrock** tunnel pointing to port `19132`.
4. Share the address playit.gg gives you with your players. Don't share your own IP.

> With a tunnel you **don't** need to open or forward any port on your router.

### More privacy tips

* **If you use a proxy together with port forwarding**, configure your firewall to accept connections only from the proxy's IP addresses. Otherwise anyone who finds your real IP can still connect directly.
* **Hide the player list** from the server list ping by setting `hide-online-players=true` in `server.properties`.
* **Redact IPs before sharing logs.** `latest.log` contains the IP address of every player who connects. Before posting a log online, mask the addresses:

```powershell
# Windows (PowerShell)
(Get-Content latest.log) -replace '\b\d{1,3}(\.\d{1,3}){3}(:\d+)?\b','x.x.x.x' | Set-Content latest-redacted.log
```

```bash
# Linux / macOS
sed -E 's/\b[0-9]{1,3}(\.[0-9]{1,3}){3}(:[0-9]+)?\b/x.x.x.x/g' latest.log > latest-redacted.log
```

> Hiding your IP is not a replacement for server security. Keep an authentication system or a whitelist enabled, especially if the server runs with `online-mode=false`.

---

## 🛠️ Troubleshooting

### Having issues with a server kit?

If you downloaded a server kit from the internet and encounter problems, please contact the **creator of that specific server kit**.

If you created the server kit yourself and need help with the server creation process, contact the **ServerPackCreator developers** for support.

---

## 📜 License

**MCServerKits License**

This project is provided under a custom license.

You are allowed to:

* ✅ Download the server kits.
* ✅ Use the server kits for personal or commercial Minecraft servers.

You are **not** allowed to:

* ❌ Redistribute or re-upload the files.
* ❌ Sell or sublicense the files.
* ❌ Modify and redistribute the files.
* ❌ Include the files in another downloadable project.
* ❌ Claim the original work as your own.
* ❌ Remove copyright or license notices.

**These restrictions apply only to the original content of this repository.**

Third-party components retain their own licenses and are not covered by the MCServerKits License, which only covers the original MCServerKits content. Every mod and data pack is licensed by its respective author, and the `start.*` / `install_java.*` scripts are © Griefed ([ServerPackCreator](https://github.com/Griefed/ServerPackCreator)) under the LGPL-2.1-or-later. Some of the included `server.jar` are based on [NeoForged's ServerStarterJar](https://github.com/neoforged/ServerStarterJar) and are subject to its own license terms.

**Commercial use of the server is subject to the individual licenses of the included mods. Please consult the `mods-audit.csv` file (and `datapacks-audit.csv`, if the pack includes data packs) in each corresponding pack for licensing and commercial-use information.**

Servers must also comply with [Mojang's Minecraft Usage Guidelines](https://www.minecraft.net/en-us/usage-guidelines).

### ServerPackCreator Attribution

The `start.sh`, `start.ps1`, `start.bat`, `install_java.sh`, and `install_java.ps1` scripts were mostly generated by [ServerPackCreator](https://github.com/Griefed/ServerPackCreator), Copyright © 2025 Griefed, and are licensed under the **LGPL-2.1-or-later** (see [`licenses/LGPL-2.1.txt`](licenses/LGPL-2.1.txt)).

These scripts are **excluded from the licensing restrictions stated above**.

### ServerStarterJar Attribution

Some files are from [NeoForged's ServerStarterJar](https://github.com/neoforged/ServerStarterJar), Copyright © NeoForged contributors, and are subject to their own license terms (see [`licenses/ServerStarterJar.txt`](licenses/ServerStarterJar.txt)).

---

## ❤️ MCServerKits

Built for Minecraft server owners who want to **download, start and play** without unnecessary setup.

**Download. Start. Play.**

> ⚠️ **REMINDER: Downloading or using a server kit means you are responsible for complying with the Minecraft EULA.**

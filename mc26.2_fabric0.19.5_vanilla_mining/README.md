# ⛏️ MCServerKits — Mining Kit

> **Vanilla gameplay, plus exactly two extras: 🪓 Treecapitator and ⛏️ Veinminer.**
> Break one log, the whole tree falls. Break one ore, the whole vein comes with it.

---

## ⚠️ IMPORTANT — MINECRAFT EULA

> **BY DOWNLOADING OR USING THIS SERVER KIT, YOU ACKNOWLEDGE THAT YOU MUST COMPLY WITH THE [MINECRAFT END USER LICENSE AGREEMENT (EULA)](https://www.minecraft.net/eula).**
>
> **Downloading a server kit does not grant you any additional rights to Minecraft or its assets.**

---

## 🌟 What makes this kit different

This kit is the **same as the [vanilla kit](../mc26.2_fabric0.19.5_vanilla)**, with **only two mods added on top**. Nothing else.

| | Mod | What it does |
| --- | --- | --- |
| 🪓 | **Treecapitator** | Chop down an **entire tree** by breaking a **single log**. No more climbing, no more floating logs. |
| ⛏️ | **Veinminer** | Mine an **entire ore vein** by breaking a **single ore block**. No more tunnelling after every last piece of coal. |

That's it. No extra content, no new blocks, no new mobs, no changes to progression: **just faster, less tedious gathering of wood and ore.**

---

## 📋 Kit information

| | |
| --- | --- |
| 🎮 **Minecraft** | 26.2 |
| 🧵 **Loader** | Fabric 0.19.5 |
| 🧱 **Base** | Same as the vanilla kit (`mc26.2_fabric0.19.5_vanilla`) |
| ➕ **Added** | 🪓 Treecapitator · ⛏️ Veinminer |
| 🔐 **Online mode** | Enabled (`online-mode=true`) |
| 💻 **Client mods** | **Not required** — players can join with a vanilla client |

---

## 🪓 Treecapitator

Break **one log** of a tree while holding an **axe** and the **whole tree comes down**.

- Works server-side: **players do not need to install anything.**
- Saves time and stops floating trees from ruining your builds and landscapes.

## ⛏️ Veinminer

Break **one ore block** with a **pickaxe** and the **whole connected vein** is mined at once.

- **With the client mod (optional):** hold the Veinminer key (**`V`** by default) while mining.
- **Without the client mod:** hold **Shift (sneak)** while mining.
- Works server-side: **players do not need to install anything.**

> 💡 **Tip:** Both mods are configurable. Edit the files inside `config/` and restart the server to change limits, tools and blocks.

---

## ✨ Features

- 🚀 **Ready to use** — Download the kit and start your server.
- ⚙️ **Pre-configured** — Server files and configurations are prepared for you.
- 📥 **Automatic mod download** — Mods are fetched from their original source (Modrinth) on first start (internet connection required) and verified with a SHA-512 hash.
- 🖥️ **Cross-platform** — Run your server on Windows, Linux and macOS.
- 📦 **Simple setup** — No complicated installation process.

---

## 📥 Installation

### 1. Download

Download this kit from the repository.

> ⚠️ **By downloading or using this server kit, you are responsible for complying with the Minecraft EULA and any other applicable terms.**

### 2. Configure

If the kit contains a `variables.txt` file, check its configuration before starting the server.

If you have:

```
JAVA=java
```

set in `variables.txt`, a suitable Java version for the Minecraft server will be installed automatically.

---

## ▶️ Starting the Server

> 🌐 **The first start requires an internet connection**, because the mods are downloaded automatically.

### 🐧 Linux / 🍎 macOS

```
./start.sh
```

or:

```
bash start.sh
```

### 🪟 Windows

```
start.bat
```

> ⚠️ **Do not delete the `.ps1` PowerShell files.**
> You can also run `start.ps1` manually, but using `start.bat` is recommended.

---

## 🧩 Included mods

**Base:** all the mods from the [vanilla kit](../mc26.2_fabric0.19.5_vanilla) (see its README for the full list).

**Added in this kit:**

| Mod | Purpose |
| --- | --- |
| 🪓 **Treecapitator** | Fell a whole tree by breaking one log |
| ⛏️ **Veinminer** | Mine a whole ore vein by breaking one ore |

Every mod is licensed by its respective author.

---

## 🛠️ Troubleshooting

If you downloaded this kit and run into problems, please contact the **creator of the kit**.

If you created a server kit yourself and need help with the server creation process, contact the **ServerPackCreator developers**.

---

## 📜 License

This kit is distributed under the **MCServerKits License** (see [`LICENSE`](../LICENSE)).

The `start.*` / `install_java.*` scripts are © Griefed (ServerPackCreator), licensed under the LGPL-2.1-or-later.

---

**Download. Start. Play. ⛏️🪓**

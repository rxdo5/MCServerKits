# 🎮 Minecraft 26.2 — Fabric Server Kit

> **Optimized, ready-to-use Minecraft 26.2 Fabric server.**

A pre-built and optimized **Minecraft 26.2 server kit** running on **Fabric Loader 0.19.5**.

This kit is designed to be downloaded, extracted and started with minimal configuration. It includes a curated set of performance, administration, gameplay and quality-of-life mods.

---

## 📋 Server Information

| Property            | Value                                       |
| ------------------- | ------------------------------------------- |
| **Minecraft**       | 26.2                                        |
| **Server Software** | Fabric                                      |
| **Fabric Loader**   | 0.19.5                                      |
| **Server Type**     | Dedicated Server                            |
| **Java**            | Java version compatible with Minecraft 26.2 |
| **Initial RAM**     | 4 GB                                        |
| **Maximum RAM**     | 8 GB                                        |
| **Mod Count**       | 70                                          |
---

## ✨ Features

* 🚀 **Ready to use** — Extract the kit and start the server.
* ⚡ **Performance optimized** — Includes multiple server-side optimization mods.
* 🧩 **Pre-configured modpack** — Required mods are downloaded automatically on first start.
* 🌍 **World optimization** — Includes chunk pre-generation and world-generation optimizations.
* 🛡️ **Server administration & security** — Permissions, logging, claims, authentication, command control and anti-xray tools.
* 🎮 **Quality of life** — Homes, warps, TPA, Veinminer, Tree Harvester and more.
* 🌐 **Cross-platform multiplayer** — Includes Geyser-Fabric for Bedrock connectivity.
* 🏆 **Advancements** — Includes BlazeandCave's Advancements Pack (1,000+ extra advancements) as a data pack.
* 💬 **Custom chat** — Styled Chat with emoji shortcodes and handy chat shortcuts (`:shrug:`, `:item:`, `:pos:`...).
* 📊 **Performance monitoring** — Spark is included for server profiling and diagnostics.
---

## ⚙️ Recommended Hardware

The actual requirements depend heavily on player count, simulation distance, view distance and world size.

As a starting point:

| Resource    | Recommendation                                 |
| ----------- | ---------------------------------------------- |
| **CPU**     | Modern CPU with strong single-core performance |
| **RAM**     | 8 GB available for the server                  |
| **Storage** | SSD recommended                                |
| **Network** | Stable low-latency connection                  |
| **Java**    | Version compatible with Minecraft 26.2         |

> The `-Xmx8G` setting does **not** mean the entire machine only needs 8 GB of RAM.
---

## 🚀 Getting Started

Because this is a **premade server kit**, no manual mod installation should be necessary. The mods and the data pack are not stored in this repository: on the first start they are downloaded from their original source (Modrinth) and verified by hash, so an internet connection is required.

1. Download the kit.
2. Extract it.
3. Make sure a compatible Java version is available.
4. Accept the Minecraft EULA.
5. Adjust `server.properties` if required.
6. Run the provided `start.*` script.
7. Configure LuckPerms and other server-specific settings as needed.
8. Start playing.

For the general installation and startup instructions, see the main **MCServerKits** README.
---

## ⚠️ Important

This kit contains mods with different dependencies and compatibility requirements.

**Do not remove or update individual mods without checking compatibility with Minecraft 26.2 and the rest of the kit.**

The start scripts restore every mod listed in `mods.lock.tsv` and every data pack listed in `datapacks.lock.tsv`. To permanently remove one of them, also delete its line from that file.

Some mods may also have specific configuration or server requirements.

Before making major changes, create a backup of:

```text
world/
config/
server.properties
```
---

## 📦 Included Mods

### ⚡ Performance & Optimization

* **Alternate Current** — `1.9.0`
* **Brainier Bees** — `1.10.2`
* **C2ME** — `0.4.2-alpha.0.55`
* **Clumps** — `26.2.1`
* **FerriteCore** — `9.0.0`
* **Get It Together, Drops!** — `1.5.1`
* **Immersive Optimization** — `0.2.0`
* **Krypton** — `0.3.1`
* **Ksyxis** — `1.4.5`
* **Lazy AI** — `1.7.0`
* **Let Me Despawn** — `1.26.9.1`
* **Lithium** — `0.25.3+mc26.2`
* **Lomka** — `0.6.0`
* **ModernFix** — `5.27.19-build.2`
* **Noisium** — `2.8.5+mc26.2-pre-2`
* **ScalableLux** — `0.3.0-alpha.0.3`
* **ServerCore** — `1.5.19+26.2`
* **TT20** — `0.8.5`
* **VMP** — `0.2.0+beta.7.236`

### 🌍 World Generation & Rendering

* **Chunky** — `1.5.3`
* **Voxy Server Side** — `server-side`

### 🛡️ Administration & Security

* **AntiXray** — `1.4.16+26.1`
* **Auth** — `1.6.2`
* **Command Aliases** — `1.0.4`
* **Ledger** — `1.3.23`
* **Log Cleaner** — `1.0.0`
* **LuckPerms** — `5.5.85`
* **Open Parties and Claims** — `0.31.6`
* **Panda Command Whitelist** — `1.2.0+26.2`
* **Spark** — `1.10.187`

### 🎮 Gameplay & Quality of Life

* **Corpse** — `1.2.1`
* **Dynamic Lights** — `1.9.3`
* **FSit Continued** — `4.0.0-alpha.1+mc26.2`
* **Fuji** — `14.12.0`
* **Healing Campfire** — `6.3`
* **Invisible Frames** — `2.0.1+26.2`
* **Mob Heads** — `5.1.1`
* **Mob Heads Powers** — `2.1.4`
* **More Mobs** — `1.5.11`
* **Players Drop Heads** — `107.1`
* **Random Mob Sizes** — `—`
* **Server Carry** — `—`
* **Set Home** — `0.0.2`
* **Skeleton Horse Spawn** — `4.1`
* **SwingThroughGrass** — `1.0.1`
* **TPA Mod** — `1.3.1`
* **Tree Harvester** — `9.4`
* **Unloaded Activity** — `0.7.0+mc26.2`
* **Veinminer** — `2.12.1`
* **Zombie Horse Spawn** — `5.2`

### 💬 Social & Presentation

* **Server Day Counter** — `1.1.2+26.3`
* **Styled Chat** — `2.13.0+26.2`
* **Styled Player List** — `3.12.0+26.2`

### 🌐 Connectivity, Compatibility & Fixes

* **Debugify** — `26.2.0.1`
* **Disconnect Packet Fix** — `2.2.0`
* **Geyser-Fabric** — `2.11.3-b1247`
* **I'm Fast** — `1.0.3`
* **PacketFixer** — `3.3.6`
* **Pet Teleport Fix** — `2.0-alpha-3.7`
* **SkinRestorer** — `2.11.0+26.1`

### 🧩 Libraries & Dependencies

* **Almanac** — `26.2-1.26.9.1`
* **Collective** — `26.2.0-8.40`
* **CoreLib** — `1.1.1`
* **Fabric API** — `0.161.0+26.2`
* **Fabric Language Kotlin** — `1.14.1+kotlin.2.4.20`
* **Forge Config API Port** — `26.2.1`
* **lib-5555ff** — `1.1.5`
* **MidnightLib** — `1.9.3+26.2`
* **ToadLib** — `1.5.1`
* **ZConfig** — `1.0.0+26.x`
---

## 🌟 Gameplay Highlights

A quick look at some of the gameplay mods included in this kit.

### 🛡️ Claims & Parties — [Open Parties and Claims](https://modrinth.com/project/gF3BGWvG)

Protect your builds by claiming chunks, and team up with your friends in parties.

* `/oclaims` — claim and unclaim chunks and manage your claims.
* `/oparties` — create a party and invite your friends.
* `/opm <message>` — send a message to your party chat.
* Press **Tab** after any of these commands to see every sub-command.
* Players who also install the mod on their client get an in-game menu.

### 🔥 Healing Campfire — [Healing Campfire](https://modrinth.com/project/kOuPUitF)

Standing near a lit campfire or soul campfire gives **Regeneration** to players and passive mobs. In this kit: Regeneration I within a 4-block radius, refreshed while you stay close. Made by Serilum.

### 🖼️ Invisible Frames — [Invisible Frames](https://modrinth.com/project/QD87oMUf)

**Sneak + right-click** an item frame to make it invisible. Do it again to make it visible. It is server-side, so every player can use it without installing anything. Made by Roundaround.

### 🧟 Mob Heads & Mob Heads Powers — [Mob Heads](https://modrinth.com/project/82uI0waE) · [Mob Heads Powers](https://modrinth.com/project/JuEY513F)

* **Mob Heads:** mobs can drop their head when a player kills them (or a charged creeper, configurable). There are 500+ unique heads (every mob, baby and variant), custom note block sounds, an advancement collection and a chat notification when a head drops. Looting does not change the drop rates.
* **Mob Heads Powers:** **wear a mob head on your head to get a power.** For example, the Axolotl head gives longer water breathing, the Turtle head gives extra resistance but slows you down, and the Dolphin head gives Dolphin's Grace but also hunger and blindness.

Both are made by Jodek, and Mob Heads Powers only works together with Mob Heads.

### 💀 Players Drop Heads — [Players Drop Heads](https://modrinth.com/project/NU7qMnLN)

When a player is killed by another player, they drop their own head.

### 📏 Random Mob Sizes — [Random Mob Sizes](https://modrinth.com/project/aKeMRgHX)

Mobs spawn in random sizes, from tiny to huge. By default a mob's health scales with its size, and the sizes can be configured per mob. It is server-side, so no client mod is needed.
---

## 📜 Data Packs

### 🏆 BlazeandCave's Advancements Pack — [Modrinth](https://modrinth.com/project/VoVJ47kN)

Adds **1,000+ new advancements** across 16 tabs (mining, farming, animals, monsters, biomes, redstone, enchanting, potions, super challenges and more), plus an advancement scoreboard, item rewards, trophies, cooperative mode and teams.

Created by **Cavinator1** — thank you for this amazing pack! 🏆

**How it is installed**

The author's license does not allow redistributing the pack, so it is **not stored in this repository**. Like the mods, it is downloaded from Modrinth by the start scripts (it is listed in `datapacks.lock.tsv`) and placed in `world/datapacks/` **before the world is created**. Minecraft then loads it automatically the first time the server starts.

**Configuration (operators only)**

```text
/function blazeandcave:config
```

From that menu you can toggle item rewards, trophies and the welcome message, choose which advancement tiers are announced, show the advancements scoreboard in the tab list or sidebar, and enable cooperative mode.

> The pack was designed for vanilla servers and the author cannot guarantee compatibility with mods, so a few advancements may behave differently on this kit.
>
> Spanish and other languages: players can install the optional [BACAP Language Pack](https://modrinth.com/resourcepack/bacap-language-pack) resource pack to translate the advancements.
---

## 💬 Chat Emojis & Shortcuts

Chat formatting is handled by **Styled Chat**. Players can type **`:name:`** in chat and it is replaced automatically.

```text
:shrug:      →  ¯\_(ツ)_/¯
:table:      →  (╯°□°）╯︵ ┻━┻
:sword:      →  🗡
:bow:        →  🏹
:trident:    →  🔱
:rod:        →  🎣
:potion:     →  🧪
:shears:     →  ✂
:bucket:     →  🪣
:bell:       →  🔔
:item:       →  the item you are holding in your main hand (visible to everyone in chat)
:pos:        →  your current coordinates, X Y Z (visible to everyone in chat)
```

On top of these, **all JoyPixels emoji shortcodes** are enabled, so things like `:smile:` or `:heart:` also work.

### Customizing the shortcuts

The list can be changed in the **Styled Chat** configuration file (`config/styled-chat.json`), inside the `emoticons` section:

```json
"emoticons": {
  "$emojibase:builtin:joypixels": "${emoji}",
  "shrug": "¯\\_(ツ)_/¯",
  "table": "(╯°□°）╯︵ ┻━┻",
  "sword": "🗡",
  "bow": "🏹",
  "trident": "🔱",
  "rod": "🎣",
  "potion": "🧪",
  "shears": "✂",
  "bucket": "🪣",
  "bell": "🔔",
  "item": "[%player:equipment_slot mainhand%]",
  "pos": "%player:pos_x% %player:pos_y% %player:pos_z%"
}
```

* The **key** is the name players type between colons (`"shrug"` → `:shrug:`).
* The **value** is what it turns into. It can be plain text, an emoji or a placeholder such as `%player:pos_x%`.
* `$emojibase:builtin:joypixels` loads the full JoyPixels emoji set. Remove that line to disable the built-in emojis.
* Apply your changes with `/styledchat reload` (or restart the server).
---

## ⌨️ Commands Available in Survival

These are the commands players can use in survival. Every other command is hidden from the command suggestions and blocked.

> [!IMPORTANT]
> **Login & Register:** even if the game tells you to use `trigger login set ...` or `trigger register set ...`, that is simply **`/login`** and **`/register`**. Use those commands to log in or to create your account. **Your password must be a number**, for example `/register 482915`.
>
> Don't reuse a password from your other accounts: it is stored on the server as a number that server operators can read.

This is configured with **[PandaCommandWhitelist](https://modrinth.com/project/LUNkqJ63)** — thanks to its author for the mod! 🐼

| Command | Description |
| ------- | ----------- |
| `/tell <player> <message>`, `/msg`, `/w` | Send a private message to a player. |
| `/r <message>` | Reply to the last private message you received. |
| `/me <action>` | Send an action message in chat. |
| `/ignore <player>` | Hide a player's messages. |
| `/unignore <player>` | Stop ignoring a player. |
| `/ignorelist` | Show the players you are ignoring. |
| `/sethome` | Set your home at your current location. |
| `/home` | Teleport to your home. |
| `/tpa <player>` | Send a teleport request to a player. |
| `/tpaccept` | Accept a pending teleport request. |
| `/pets` | Pet management. |
| `/register <password>` | Create your account the first time you join (login system). The password must be a number. See the **important note** above. |
| `/login <password>` | Log in every time you join. See the **important note** above. |
| `/changepassword <password>` | Change your password (it must be a number). |
| `/pos` | Send your current coordinates (X Y Z) to the chat so everyone can see them. |
| `/item` | Show the item you are holding in your main hand to everyone in the chat. |
| `/oclaims` | Manage the chunk claims you own on the server or claim new ones. |
| `/oparties` | Create or join a party with your friends. |
| `/opm <message>` | Send a message to your party chat. |

> 💡 You can also use the **chat shortcuts** `:pos:` and `:item:` (from Styled Chat) inside a normal message, for example: `I found diamonds at :pos:` or `Look at my :item:`. They show the same information, but inside your own text.

### Customizing the allowed commands

The list lives in `config/PandaCommandWhitelist.json`:

```json
{
  "commands": [
    "tell *",
    "me *",
    "msg *",
    "w *",
    "r *",

    "ignore *",
    "unignore *",
    "ignorelist",

    "home",
    "sethome",
    "login *",
    "register *",
    "changepassword *",
    "tpa *",
    "tpaccept",
    "pets",

    "pos",
    "item",

    "oclaims *",
    "oparties *",
    "opm *"
  ],
  "blockedMessage": "That command is blocked or doesn\u0027t exist."
}
```

* Each entry is a command that is allowed. A trailing `*` is a wildcard that allows any arguments (`"tell *"` allows `/tell Steve hello`); without it, only the bare command is allowed.
* `blockedMessage` is what players see when they try a command that is not on the list.
* To allow another command, add it to `commands` and restart the server.
---

## 🌐 Bedrock Support

This kit includes **Geyser-Fabric**, allowing Minecraft Bedrock Edition players to connect to the Java Edition server.

**SkinRestorer** is also included for improved skin compatibility.

Additional Geyser configuration may be required depending on your network setup.
---

## 🗺️ World Pre-generation

**Chunky** is included to allow the world to be pre-generated before players begin exploring.

Example:

```text
/chunky radius 5000
/chunky start
```

Pre-generating the world can significantly reduce the workload caused by generating new terrain while players are exploring.

> The required pre-generation time depends on the selected world size and available hardware.
---

## 📊 Performance Monitoring

**Spark** is included for performance monitoring and profiling.

Useful commands include:

```text
/spark tps
/spark health
/spark profiler start
```

Spark can be used to investigate TPS issues, CPU usage and other server performance problems.
---

## ☕ Java Arguments

The server uses **G1GC** with a configuration based on **Aikar's JVM flags**.

### Recommended startup command

```bash
java -Xms4G -Xmx8G \
-XX:+UseG1GC \
-XX:+ParallelRefProcEnabled \
-XX:MaxGCPauseMillis=200 \
-XX:+UnlockExperimentalVMOptions \
-XX:+DisableExplicitGC \
-XX:+AlwaysPreTouch \
-XX:G1NewSizePercent=30 \
-XX:G1MaxNewSizePercent=40 \
-XX:G1HeapRegionSize=8M \
-XX:G1ReservePercent=20 \
-XX:G1HeapWastePercent=5 \
-XX:G1MixedGCCountTarget=4 \
-XX:InitiatingHeapOccupancyPercent=15 \
-XX:G1MixedGCLiveThresholdPercent=90 \
-XX:G1RSetUpdatingPauseTimePercent=5 \
-XX:SurvivorRatio=32 \
-XX:+PerfDisableSharedMem \
-XX:MaxTenuringThreshold=1 \
-Dusing.aikars.flags=https://mcflags.emc.gs \
-Daikars.new.flags=true \
-jar server.jar nogui
```

> **Note:** `-Xms4G` sets the initial Java heap to 4 GB, while `-Xmx8G` allows the server to use up to 8 GB of heap memory.
>
> The machine should have additional RAM available for the operating system, native memory, libraries and other processes.
---

## 📄 License & Mod Credits

The mods used by this kit are created and distributed by their respective authors. They are **not** included in this repository; they are downloaded from their original source.

This kit does **not** claim ownership of any third-party mods or data packs. **BlazeandCave's Advancements Pack** is created by Cavinator1 and is downloaded from Modrinth, not redistributed here.

See [`mods-audit.csv`](mods-audit.csv) for the list of mods and [`datapacks-audit.csv`](datapacks-audit.csv) for the data pack, with their project pages and the license each author declares. Please refer to each mod's license and distribution terms before redistributing any mod.

For the license applying to **MCServerKits**, see the repository's [`LICENSE`](../LICENSE) file.
---

## 🎮 Part of MCServerKits

This server kit is part of **MCServerKits**, a collection of ready-to-use Minecraft server configurations.

> **Download. Start. Play.**

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
| **Mod Count**       | 48                                          |

---

## ✨ Features

* 🚀 **Ready to use** — Extract the kit and start the server.
* ⚡ **Performance optimized** — Includes multiple server-side optimization mods.
* 🧩 **Pre-configured modpack** — Required mods are downloaded automatically on first start.
* 🌍 **World optimization** — Includes chunk pre-generation and world-generation optimizations.
* 🛡️ **Server administration & security** — Permissions, logging, claims, authentication and anti-cheat tools.
* 🎮 **Quality of life** — Homes, warps, TPA, Veinminer, Tree Harvester and more.
* 🌐 **Cross-platform multiplayer** — Includes Geyser-Fabric for Bedrock connectivity.
* 📊 **Performance monitoring** — Spark is included for server profiling and diagnostics.

---

## 📦 Included Mods

### ⚡ Performance & Optimization

* **Alternate Current** — `1.9.0`
* **C2ME** — `0.4.2-alpha.0.52`
* **C2ME OpenCL Acceleration** — `0.4.2-alpha.0.52`
* **Clumps** — `26.2.1`
* **FerriteCore** — `9.0.0`
* **Get It Together, Drops!** — `1.5.1`
* **Immersive Optimization** — `0.2.0`
* **Krypton** — `0.3.1`
* **Let Me Despawn** — `1.26.9.1`
* **Lithium** — `0.25.3+mc26.2`
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
* **Ledger** — `1.3.23`
* **LuckPerms** — `5.5.85`
* **MeshAC** — `1.0.0`
* **Open Parties and Claims** — `0.31.6`

### 🎮 Gameplay & Quality of Life

* **Corpse** — `1.2.1`
* **Dynamic Lights** — `1.9.3`
* **FSit Continued** — `3.0.1-beta.2+mc26.2`
* **Players Drop Heads** — `107.1`
* **Server Carry** — `—`
* **Simple Warp TPA Home Back** — `1.3`
* **SwingThroughGrass** — `1.0.1`
* **Spawn Animations** — `1.11.6`
* **Tree Harvester** — `9.4`
* **Veinminer** — `2.12.1`

### 💬 Social & Presentation

* **Server Day Counter** — `1.1.2+26.3`
* **Styled Chat** — `2.13.0+26.2`
* **Styled Player List** — `3.12.0+26.2`

### 🌐 Connectivity & Compatibility

* **Disconnect Packet Fix** — `2.2.0`
* **Geyser-Fabric** — `2.11.3-b1247`
* **SkinRestorer** — `2.11.0+26.1`

### 🧩 Libraries & Dependencies

* **Almanac** — `26.2-1.26.9.1`
* **Collective** — `26.2.0-8.40`
* **CoreLib** — `1.1.1`
* **Fabric API** — `0.161.0+26.2`
* **Fabric Language Kotlin** — `1.14.1+kotlin.2.4.20`
* **Forge Config API Port** — `26.2.1`
* **ToadLib** — `1.5.1`

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

## 🌐 Bedrock Support

This kit includes **Geyser-Fabric**, allowing Minecraft Bedrock Edition players to connect to the Java Edition server.

**SkinRestorer** is also included for improved skin compatibility.

Additional Geyser configuration may be required depending on your network setup.

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

Because this is a **premade server kit**, no manual mod installation should be necessary. The mods are not stored in this repository: on the first start they are downloaded from their original source (Modrinth) and verified by hash, so an internet connection is required.

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

The start scripts restore every mod listed in `mods.lock.tsv`. To permanently remove a mod, also delete its line from that file.

Some mods may also have specific configuration or server requirements.

Before making major changes, create a backup of:

```text
world/
config/
server.properties
```

---

## 📄 License & Mod Credits

The mods used by this kit are created and distributed by their respective authors. They are **not** included in this repository; they are downloaded from their original source.

This kit does **not** claim ownership of any third-party mods.

See [`mods-audit.csv`](mods-audit.csv) for the list of mods, their project pages and the license each author declares. Please refer to each mod's license and distribution terms before redistributing any mod.

For the license applying to **MCServerKits**, see the repository's [`LICENSE`](../LICENSE) file.

---

## 🎮 Part of MCServerKits

This server kit is part of **MCServerKits**, a collection of ready-to-use Minecraft server configurations.

> **Download. Start. Play.**

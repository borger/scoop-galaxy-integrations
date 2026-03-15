[![Tests](https://github.com/borger/scoop-galaxy-integrations/actions/workflows/ci.yml/badge.svg)](https://github.com/borger/scoop-galaxy-integrations/actions/workflows/ci.yml)
[![Excavator](https://github.com/borger/scoop-galaxy-integrations/actions/workflows/excavator.yml/badge.svg)](https://github.com/borger/scoop-galaxy-integrations/actions/workflows/excavator.yml)
[![Repo size](https://img.shields.io/github/repo-size/borger/scoop-galaxy-integrations.svg)](https://github.com/borger/scoop-galaxy-integrations)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/borger/scoop-galaxy-integrations/blob/master/LICENSE)

# GOG Galaxy 2 Integrations Scoop Bucket

There's no easy way to keep track of all existing galaxy integrations out there and keep them up-to-date. [Scoop](https://scoop.sh) helps you get the programs you need, with a minimal amount of point-and-clicking. It's highly scalable and easily customized. It's almost like a package manager our *NIX friends know and love. It makes it easy to download, install, update and uninstall apps on your computer, as easy as `scoop install <app-name>`, cool right? I've always struggled to get my galaxy integrations in the latest version, there's just so many!

## Integrations Available in this Bucket

The list below contains only the integrations available in this scoop which were selected based on the GOG Galaxy's [available platforms](https://github.com/gogcom/galaxy-integrations-python-api/blob/master/PLATFORM_IDs.md), if you are looking for more integrations to be manually installed or to be added to this bucket, check the full list at [awesome-gog-galaxy](https://github.com/Mixaill/awesome-gog-galaxy).

Integration Platform                              | Manifest Name         |
------------------------------------------------- | ----------------------|
***Stores***                                                              |
[Amazon][amazon]                                  | `galaxy-amazon`       |
[Blizzard][blizzard]                              | `galaxy-blizzard`     |
[Guild Wars 2][gw2]                               | `galaxy-gw2`          |
[Humble Bundle][humble]                           | `galaxy-humble`       |
[Minecraft][minecraft]                            | `galaxy-minecraft`    |
[Paradox][paradox]                                | `galaxy-paradox`      |
[Path of Exile][pathofexile]                      | `galaxy-pathofexile`  |
[PSN][psn]                                        | `galaxy-psn`          |
[Riot][riot]                                      | `galaxy-riot`         |
[Rockstar][rockstar]                              | `galaxy-rockstar`     |
[Steam][steam]                                    | `galaxy-steam`        |
[Twitch][twitch]                                  | `galaxy-twitch`       |
[Uplay][uplay]                                    | `galaxy-uplay`        |
[Wargaming][wargaming]                            | `galaxy-wargaming`    |
***Emulators***                                                           |
[Nintendo 3DS (Citra)][3ds]                       | `galaxy-3ds-citra`    |
[Nintendo 64 (RetroArch)][n64]                    | `galaxy-n64`          |
[Nintendo DS (RetroArch, DeSmuME)][nds]           | `galaxy-nds`          |
[Nintendo GameCube (RetroArch, Dolphin)][ncube]   | `galaxy-ncube`        |
[Nintendo Wii (RetroArch, Dolphin)][nwii]         | `galaxy-nwii`         |
[Nintendo Wii U (Cemu)][nwiiu]                    | `galaxy-nwiiu-cemu`   |
[Playstation 2 (PCSX2)][ps2]                      | `galaxy-ps2`          |

[blizzard]: https://github.com/FriendsOfGalaxy/galaxy-integration-blizzard "Friends of Galaxy"
[gw2]: https://github.com/FriendsOfGalaxy/galaxy-integration-gw2 "Friends of Galaxy"
[humble]: https://github.com/FriendsOfGalaxy/galaxy-integration-humble "Friends of Galaxy"
[minecraft]: https://github.com/FriendsOfGalaxy/galaxy-integration-minecraft "Friends of Galaxy"
[paradox]: https://github.com/FriendsOfGalaxy/galaxy-integration-paradox "Friends of Galaxy"
[pathofexile]: https://github.com/FriendsOfGalaxy/galaxy-integration-pathofexile "Friends of Galaxy"
[psn]: https://github.com/FriendsOfGalaxy/galaxy-integration-psn "Friends of Galaxy"
[wargaming]: https://github.com/FriendsOfGalaxy/galaxy-integration-wargaming "Friends of Galaxy"
[steam]: https://github.com/GOG-Nebula/galaxy-integration-steam "Maintained by GOG-Nebula"
[rockstar]: https://github.com/tylerbrawl/Galaxy-Plugin-Rockstar "Maintained by @tylerbrawl"
[uplay]: https://github.com/GOG-Nebula/galaxy-integration-uplay "Maintained by GOG-Nebula"
[amazon]: https://github.com/Rall3n/galaxy-integration-amazon "Maintained by @Rall3n"
[riot]: https://github.com/BellezaEmporium/galaxy-riot-integration "Maintained by @BellezaEmporium"
[twitch]: https://github.com/nyash-qq/galaxy-plugin-twitch "Maintained by @nyash-qq"
[3ds]: https://github.com/LeonardFiedrowicz/galaxy-integration-citra "Maintained by @LeonardFiedrowicz"
[n64]: https://github.com/Riku55/galaxy-integration-n64-RetroArch- "Maintained by @Riku55"
[nds]: https://github.com/TBemme/galaxy-integration-nds "Maintained by @TBemme"
[ncube]: https://github.com/JTNDev/galaxy-integration-gc "Maintained by @JTNDev"
[nwii]: https://github.com/JTNDev/galaxy-integration-wii "Maintained by @JTNDev"
[nwiiu]: https://github.com/LeonardFiedrowicz/galaxy-integration-cemu "Maintained by @LeonardFiedrowicz"
[ps2]: https://github.com/AHCoder/galaxy-integration-ps2 "Maintained by @AHCoder"

## 1. Installing Scoop

Windows 10 and Windows 11 include PowerShell installed by default. Open the start menu and type `PowerShell`. You might see both `Windows PowerShell` and [PowerShell 7 (x64)](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell), the latter is recommended, but the former works too.

Open PowerShell and run:

```powershell
iwr -useb get.scoop.sh | iex
```

Scoop installs to `~/scoop` (e.g., `C:\Users\<username>\scoop\`)

## 2. Adding This Bucket

```powershell
scoop bucket add galaxy-integrations https://github.com/borger/scoop-galaxy-integrations.git
```

To search for available apps across all added buckets, run:

```powershell
scoop search
```

## 3. Installing Integrations

With the bucket added and GOG Galaxy closed, run:

```powershell
scoop install <manifest-name>
# examples:
scoop install galaxy-steam
scoop install galaxy-uplay
```

Apps install to `~/scoop/apps/<manifest-name>/current`.

### Notes on the Install Path

The integrations are installed in the scoop folder. To make them visible to GOG Galaxy, scoop will automatically create a [Symbolic Link](https://www.howtogeek.com/16226/complete-guide-to-symbolic-links-symlinks-on-windows-or-linux/) for you. It does require Administrator privilege, so if you're not already on an Administrator PowerShell session, scoop will ask you to elevate your permission via a Windows `User Account Control` pop-up. You can, however, opt to do it manually. To do so, make sure GOG Galaxy is closed, open a command prompt as Administrator and run:

```cmd
mklink /D "%localappdata%\GOG.com\Galaxy\plugins\installed\<manifest-name>" "%homepath%\scoop\apps\<manifest-name>\current\integration"
```

Make sure to change `<manifest-name>` with the actual names.

## 4. Updates

This bucket checks for updates every hour. You must run update commands manually to apply them:

```powershell
scoop update              # Update metadata
scoop update *            # Update all installed apps
scoop update <manifest-name>   # Update a specific integration
```

**Automating Updates:** Create a `scoop-update.ps1` script with:

```powershell
scoop update
scoop update *
```

Then add it to Windows Task Scheduler to run daily or in your preferred schedule.

## Alternatives

- [gog-galaxy-plugin-downloader](https://github.com/Slashbunny/gog-galaxy-plugin-downloader/releases) by [Slashbunny](https://github.com/Slashbunny): If you don't want to use `scoop` to install/update your galaxy integrations, you can use this alternative method which has a compiled Windows Binary (.exe) to take care of your setup. It's based on python and if you want you can extend it easily to your liking.

## Need Emulators?

I've also created a scoop bucket for emulators, visit https://github.com/borger/scoop-emulators for more details.

## Contributing

Thank you for considering contributing to the Galaxy Integrations Scoop Bucket! You may propose new features or improvements of existing bucket behavior in the GitHub issue board. If you propose a new feature, please be willing to implement at least some of the code that would be needed to complete the feature.

---

## Credits

- [borger](https://github.com/borger) for creating and maintaining this bucket.
- [lukesampson](https://github.com/lukesampson) for creating Scoop.
- [Mixaill](https://github.com/Mixaill/) for creating & maintaining the [awesome-gog-galaxy](https://github.com/Mixaill/awesome-gog-galaxy) list of integrations.

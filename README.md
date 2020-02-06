[![Build status](https://ci.appveyor.com/api/projects/status/t73vx474d82sqk86?svg=true)](https://ci.appveyor.com/project/borger/scoop-galaxy-integrations) [![Repo size](https://img.shields.io/github/repo-size/borger/scoop-galaxy-integrations.svg)](https://github.com/borger/scoop-galaxy-integrations)
## GOG Galaxy 2 Integrations Scoop Bucket

There's no easy way to keep track of all existing galaxy integrations out there and keep them up-to-date. [Scoop](http://scoop.sh) helps you get the programs you need, with a minimal amount of point-and-clicking. It's highly scalable and easily customized. It's almost like a package manager our *NIX friends know and love. It makes it easy to download, install, update and uninstall apps on your computer, as easy as `scoop install <app-name>`, cool right? I've always struggled to get my galaxy integrations in the latest version, there's just so many!

## Integrations Available in this Bucket
The list below contains only the integrations available in this scoop which were selected based on the GOG Galaxy's [available platforms](https://github.com/gogcom/galaxy-integrations-python-api/blob/master/PLATFORM_IDs.md), if you are looking for more integrations to be manually installed or to be added to this bucket, check the full list at [awesome-gog-galaxy](https://github.com/Mixaill/awesome-gog-galaxy).

Integration Platform                              | Manifest Name         |
------------------------------------------------- | ----------------------|
***Friends of Galaxy***                                                   |
[Battle.net][battlenet]                           | `galaxy-battlenet`    |
[Bethesda.net][bethesda]                          | `galaxy-bethesda`     |
[Blizzard][blizzard]                              | `galaxy-blizzard`     |
[Epic Games Store][epic]                          | `galaxy-epic`         |
[Guild Wars 2][gw2]                               | `galaxy-gw2`          |
[Humble Bundle][humble]                           | `galaxy-humble`       |
[Minecraft][minecraft]                            | `galaxy-minecraft`    |
[Origin][origin]                                  | `galaxy-origin`       |
[Paradox][paradox]                                | `galaxy-paradox`      |
[Path of Exile][pathofexile]                      | `galaxy-pathofexile`  |
[PSN][psn]                                        | `galaxy-psn`          |
[Rockstar][rockstar]                              | `galaxy-rockstar`     |
[Steam][steam]                                    | `galaxy-steam`        |
[Uplay][uplay]                                    | `galaxy-uplay`        |
[Wargaming][wargaming]                            | `galaxy-wargaming`    |
***Community, Stores***                                                   |
[Discord][discord]                                | `galaxy-discord`      |
[Twitch.tv][twitch]                               | `galaxy-twitch`       |
***Community, Games***                                                    |
[Final Fantasy XIV][ffxiv]                        | `galaxy-ffxiv`        |
***Community, Emulators***                                                |
[Nintendo 3DS (Citra)][3ds]                       | `galaxy-3ds-citra`    |
[Nintendo 64 (RetroArch)][n64]                    | `galaxy-n64`          |
[Nintendo DS (RetroArch, DeSmuME)][nds]           | `galaxy-nds`          |
[Nintendo GameCube (RetroArch, Dolphin)][ncube]   | `galaxy-ncube`        |
[Nintendo Wii (RetroArch, Dolphin)][nwii]         | `galaxy-nwii`         |
[Nintendo Wii U (Cemu)][nwiiu]                    | `galaxy-nwiiu-cemu`   |

[battlenet]: https://github.com/FriendsOfGalaxy/galaxy-integration-battlenet "Friends of Galaxy"
[bethesda]: https://github.com/FriendsOfGalaxy/galaxy-integration-bethesda "Friends of Galaxy"
[blizzard]: https://github.com/FriendsOfGalaxy/galaxy-integration-blizzard "Friends of Galaxy"
[epic]: https://github.com/FriendsOfGalaxy/galaxy-integration-epic "Friends of Galaxy"
[gw2]: https://github.com/FriendsOfGalaxy/galaxy-integration-gw2 "Friends of Galaxy"
[humble]: https://github.com/FriendsOfGalaxy/galaxy-integration-humble "Friends of Galaxy"
[origin]: https://github.com/FriendsOfGalaxy/galaxy-integration-origin "Friends of Galaxy"
[minecraft]: https://github.com/FriendsOfGalaxy/galaxy-integration-minecraft "Friends of Galaxy"
[paradox]: https://github.com/FriendsOfGalaxy/galaxy-integration-paradox "Friends of Galaxy"
[pathofexile]: https://github.com/FriendsOfGalaxy/galaxy-integration-pathofexile "Friends of Galaxy"
[psn]: https://github.com/FriendsOfGalaxy/galaxy-integration-psn "Friends of Galaxy"
[rockstar]: https://github.com/FriendsOfGalaxy/galaxy-integration-rockstar "Friends of Galaxy"
[steam]: https://github.com/FriendsOfGalaxy/galaxy-integration-steam "Friends of Galaxy"
[uplay]: https://github.com/FriendsOfGalaxy/galaxy-integration-uplay "Friends of Galaxy"
[wargaming]: https://github.com/FriendsOfGalaxy/galaxy-integration-wargaming "Friends of Galaxy"
[discord]: https://github.com/Ertego/gog-galaxy-discord "Maintained by @Ertego"
[twitch]: https://github.com/nyash-qq/galaxy-plugin-twitch "Maintainted by @nyash-qq"
[ffxiv]: https://github.com/RZetko/galaxy-integration-ffxiv "Maintainted by @RZetko"
[3ds]: https://github.com/j-selby/galaxy-integration-citra "Maintainted by @j-selby"
[n64]: https://github.com/Riku55/galaxy-integration-n64-RetroArch- "Maintained by @Riku55"
[nds]: https://github.com/TBemme/galaxy-integration-nds "Maintainted by @TBemme"
[ncube]: https://github.com/JTNDev/galaxy-integration-gc "Maintainted by @JTNDev"
[nwii]: https://github.com/JTNDev/galaxy-integration-wii "Maintainted by @JTNDev"
[nwiiu]: https://github.com/LeonardFiedrowicz/galaxy-integration-cemu "Maintained by @LeonardFiedrowicz"

## Installation
#### Installing Scoop
Make sure [PowerShell 5](https://aka.ms/wmf5download) (or later, include [PowerShell Core](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-6)) and [.NET Framework 4.5](https://www.microsoft.com/net/download) (or later) are installed. Then run:

    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

    # or shorter
    iwr -useb get.scoop.sh | iex
Scoop will be installed by default on your user's home folder, likely on `C:\Users\<username>\scoop\`.

#### Installing Galaxy Integrations Scoop Bucket
To make it easy to install apps from this bucket, with [scoop](#-Installing-Scoop) installed, run

    scoop bucket add galaxy-integrations https://github.com/borger/scoop-galaxy-integrations.git
The bucket will be installed on `C:\Users\<username>\scoop\buckets\galaxy-integrations\`.

To find which apps are available to install (from all installed buckets), run

    scoop search

#### Installing Galaxy Integrations from the Scoop Bucket
With the galaxy integrations scoop bucket installed and GOG Galaxy closed, run

    scoop install <manifest-name>
    # examples:
    scoop install galaxy-steam
    scoop install galaxy-uplay
The integrations will be installed on `C:\Users\<username>\scoop\apps\<manifest-name>\current`.

#### Notes on the Install Path
The integrations are installed in the [scoop](#-Installing-Scoop) folder, to make it visible to GOG Galaxy, [scoop](#-Installing-Scoop) will automatically create a [Symbolic Link](https://www.howtogeek.com/howto/16226/complete-guide-to-symbolic-links-symlinks-on-windows-or-linux/) for you. It does require Administrator privilege, so if you're not already on an Administrator PowerShell session, [scoop](#-Installing-Scoop) will ask you to elevate your permission via a Windows `User Account Control` pop-up. You can, however, opt to do it manually. To do so, make sure GOG Galaxy is closed, open a command prompt as Administrator and run

    mklink /D "%localappdata%\GOG.com\Galaxy\plugins\installed\<manifest-name>" "%homepath%\scoop\apps\<manifest-name>\current\integration"
Make sure to change `<manifest-name>` with the actual names.
## Updates
#### Updating Scoop
To update scoop itself, run

    scoop update

#### Updating Galaxy Integrations from the Scoop Bucket
To update all the apps installed on your computer via [Scoop](http://scoop.sh), run

    scoop update *

To update a specific galaxy integration via scoop, run

    scoop update <manifest-name>
    # examples:
    scoop update galaxy-steam
    scoop update galaxy-uplay

#### Automating Updates
If you're like me and don't want to remember commands, or even to update, you can very simply create a PowerShell script and perhaps even add it to Windows Task Scheduler, to run daily or in your preferred schedule. The script contents would just be:

    scoop update
    scoop update *
This bucket is immediately updated once the included integrations get a newer version.

## Alternatives
- [gog-galaxy-plugin-downloader](https://github.com/Slashbunny/gog-galaxy-plugin-downloader/releases) by [Slashbunny](https://github.com/Slashbunny): If you don't want to use `scoop` to install/update your galaxy integrations, you can use this alternative method which has a compiled Windows Binary (.exe) to take care of your setup. It's based on python and if you want you can extend it easily to your liking.

## Need Emulators?
I've also created a scoop bucket for emulators, visit https://github.com/borger/scoop-emulators for more details.

## Contributing
Thank you for considering contributing to the Galaxy Integrations Scoop Bucket! You may propose new features or improvements of existing bucket behavior in the GitHub issue board. If you propose a new feature, please be willing to implement at least some of the code that would be needed to complete the feature.

### Credits
- [lukesampson](https://github.com/lukesampson) for creating Scoop.
- [Mixaill](https://github.com/Mixaill/) for creating & maintaining the [awesome-gog-galaxy](https://github.com/Mixaill/awesome-gog-galaxy) list of integrations.

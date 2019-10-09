## GOG Galaxy 2 Integrations Scoop Bucket

There's no easy way to keep track of all existing galaxy integrations out there, and keep them up-to-date. [Scoop](http://scoop.sh) helps you get the programs you need, with a minimal amount of point-and-clicking. It's highly scalable and easily customized. It's almost like a package manager our *NIX friends know and love. It makes it easy to download, install, update and uninstall apps on your computer, as easy as `scoop install <app-name>`, cool right? I've always struggled to get my galaxy integrations in the latest version, there's just so many!

## Installation
#### Installing Scoop
Make sure [PowerShell 5](https://aka.ms/wmf5download) (or later, include [PowerShell Core](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-6)) and [.NET Framework 4.5](https://www.microsoft.com/net/download) (or later) are installed. Then run:

    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
    
    # or shorter
    iwr -useb get.scoop.sh | iex
Scoop will be installed by default on your user's home folder, likely on `C:\Users\<username>\scoop\`.

#### Installing Galaxy Integrations Scoop Bucket
To make it easy to install apps from this bucket, with [scoop](#-Installing-Scoop) installed run

    scoop bucket add galaxy-integrations https://github.com/borger/scoop-galaxy-integrations.git
The bucket will be installed on `C:\Users\<username>\scoop\buckets\galaxy-integrations\`.

To find which apps are available to install (from all installed buckets), run

    scoop search

#### Installing Galaxy Integrations from the Scoop Bucket
With the galaxy integrations scoop bucket installed and GOG Galaxy closed, run 

    scoop install <galaxy-integration-name>
    # examples:
    scoop install galaxy-steam
    scoop install galaxy-uplay
The integrations will be installed on `C:\Users\<username>\scoop\apps\<galaxy-integration-name>\current`.

#### Notes on the Install Path
The integrations are installed in the [scoop](#-Installing-Scoop) folder, in order to make it visible to GOG Galaxy, [scoop](#-Installing-Scoop) will automatically create a [Symbolic Link](https://www.howtogeek.com/howto/16226/complete-guide-to-symbolic-links-symlinks-on-windows-or-linux/) for you. It does require Administrator privilege, so if you're not already on an Administrator PowerShell session, [scoop](#-Installing-Scoop) will ask you to elevate your permission via a Windows `User Account Control` pop-up. You can however opt to do it manually. To do so, make sure GOG Galaxy is closed, open a command prompt as Administrator and run

    mklink /D "%localappdata%\GOG.com\Galaxy\plugins\installed\<galaxy-integration-name>" "%homepath%\scoop\apps\<galaxy-integration-name>\current\integration"
Make sure to change `<galaxy-integration-name>` with the actual names.
## Updates
#### Updating Scoop
To update scoop itself, run

    scoop update

#### Updating Galaxy Integrations from the Scoop Bucket
To update all the apps installed on your computer via [Scoop](http://scoop.sh), run

    scoop update *

To update a specific galaxy integration via scoop, run

    scoop update <galaxy-integration-name>
    # examples:
    scoop update galaxy-steam
    scoop update galaxy-uplay

#### Automating Updates
If you're like me and don't want to remember commands, or even to update, you can very simply create a PowerShell script and perhaps even add it to Windows' Task Scheduler, to run daily or in your preferred schedule. The script contents would just be:

    scoop update
    scoop update *
This bucket is immediately updated once the included integrations get a newer version.

## Contributing
Thank you for considering contributing to the Galaxy Integrations Scoop Bucket! You may propose new features or improvements of existing bucket behavior in the GitHub issue board. If you propose a new feature, please be willing to implement at least some of the code that would be needed to complete the feature.

### Credits
- [lukesampson](https://github.com/lukesampson) for creating Scoop.
- [Mixaill](https://github.com/Mixaill/) for creating & maintaining the [awesome-gog-galaxy](https://github.com/Mixaill/awesome-gog-galaxy) list of integrations.

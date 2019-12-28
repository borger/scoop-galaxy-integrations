param(
    # overwrite upstream param
    [String]$upstream = "borger/scoop-galaxy-integrations:master"
)

if (!$env:SCOOP_HOME) {
    $env:SCOOP_HOME = Resolve-Path (Split-Path (Split-Path (scoop which scoop)))
}
$autopr = "$env:SCOOP_HOME/bin/auto-pr.ps1"
$dir = "$psscriptroot/../bucket" # checks the parent dir
Invoke-Expression -command "$autopr -dir $dir -upstream $upstream $($args | ForEach-Object { "$_ " })"

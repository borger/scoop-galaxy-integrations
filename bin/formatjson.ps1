if (!$env:SCOOP_HOME) {
    $env:SCOOP_HOME = Resolve-Path (Split-Path (Split-Path (scoop which scoop)))
}
$formatjson = "$env:SCOOP_HOME/bin/formatjson.ps1"
$path = "$psscriptroot/../bucket" # checks the parent dir
Invoke-Expression -command "$formatjson -path $path $($args | ForEach-Object { "$_ " })"

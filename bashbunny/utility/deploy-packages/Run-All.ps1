# Set preferences for script.
$DebugPreference = "Continue"

# Change directory to script's current directory. This fixes directory issues
# when, for example, the script is called from outside of this directory.
Write-Debug "Changing directory to $PSScriptRoot"
Set-Location $PSScriptRoot

# Run MSI installers.
Get-ChildItem .\Packages -Filter *.msi -Name | ForEach-Object {
    Write-Debug "Executing $_"
    Start-Process C:\Windows\System32\msiexec.exe -ArgumentList "/i $PSScriptRoot\Packages\$_" -wait
}

# Run EXE installers and programs.
Get-ChildItem .\Packages -Filter *.exe -Name | ForEach-Object {
    Write-Debug "Executing $_"
    Start-Process $PSScriptRoot\Packages\$_ -wait
}

Write-Host " _       __                 _            "
Write-Host "| |     / /___ __________  (_)___  ____ _"
Write-Host "| | /| / / __ \`/ ___/ __ \/ / __ \/ __ \`/"
Write-Host "| |/ |/ / /_/ / /  / / / / / / / / /_/ / "
Write-Host "|__/|__/\__,_/_/  /_/ /_/_/_/ /_/\__, /  "
Write-Host "                                /____/   "
Write-Host "Close this window and eject the bunny before unplugging to"
Write-Host "gracefully shutdown!"
Pause

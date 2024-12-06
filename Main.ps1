#Import Module PSWindowsUpdate
Import-Module -Name PSWindowsUpdate

function PSWindowsUpdate {
    Start-Process microsoft-edge:https://www.powershellgallery.com/packages/PSWindowsUpdate/
    Main
}
function Winget {
    Clear-Host
    Write-Host " "
    Write-Host "WinGet is a command line tool enabling users to discover, install, upgrade, remove and configure applications on Windows 10, Windows 11, and Windows Server 2025 computers." -ForegroundColor Green
    Write-Host "This tool is the client interface to the Windows Package Manager service." -ForegroundColor Green
    Write-Host " "
    Pause
    Main
}
function GetWindowsUpdate {
    Clear-Host
    Write-Host " "
    Get-WindowsUpdate | Format-Table
    Write-Host " "
    Pause    
    Main
}
function WindowsUpdateAcceptAll {
    Clear-Host
    Write-Host " "
    Get-WindowsUpdate -AcceptAll
    Write-Host " "
    Pause
    Main
}function GetWUHistory {
    Clear-Host
    Write-Host " "
    Get-WUHistory -Last 20 | Format-Table
    Write-Host " "
    Pause
    Main    
}
function InstallSpecUpdate {
    Clear-Host
    Write-Host " "
    Write-Host "Getting the updates.." -ForegroundColor Green
    Get-WindowsUpdate | Format-Table
    Write-Host "Whis is the updates you can install."
    $update = Read-Host "Which update would you like to install? -- Tex KB123123"
    Install-WindowsUpdate  -KBArticleID $update
    Get-WUHistory -Last 5 | Format-Table
    Pause
    Main    
}
function Wingetlist {
    Clear-Host
    Write-Host " "
    winget.exe list
    Pause
    Main
}
function WingetupgradeAll {
    Clear-Host
    Write-Host " "
    winget.exe upgrade --all
    Pause
    Main
}
function WingetupgradeSpec {
    Clear-Host
    Write-Host " "
    winget.exe list
    Write-Host " "
    $update = Read-Host "Type the NAME of the Program you will like to Upgrade"
    winget.exe upgrade $update
    Pause
}

function Main {
    Clear-Host
Write-Host " "
Write-Host "    ___   _____               _                          " -ForegroundColor Green
Write-Host "    |_ _| |_   _|   __ _    __| |   __ _   _ __ ___      " -ForegroundColor Green
Write-Host "     | |    | |    / _`  |  / _`  |  / _`  | | '_ ` _  \     " -ForegroundColor Green
Write-Host "     | |    | |   | (_| | | (_| | | (_| | | | | | | |    " -ForegroundColor Green
Write-Host "    |___|   |_|    \__,_|  \__,_|  \__,_| |_| |_| |_|    " -ForegroundColor Green
Write-Host " "
Write-Host " "
Write-Host " Update your Windows whit Powershell and Update your Programs whit Powershell" -ForegroundColor Green
Write-Host " "
Write-Host " "





Write-Host "   1. Get Windows Updates"  -ForegroundColor Green
Write-Host "   2. Get Windows Update And Install all Updates "  -ForegroundColor Green
Write-Host "   3. Get Windows Update History -Last 20 Updates "  -ForegroundColor Green
Write-Host "   4. Install Specific Available Update"   -ForegroundColor Green
Write-Host " "
Write-Host "   5. See Installed Programs" -ForegroundColor Green
Write-Host "   6. Upgrade all Installed Programs" -ForegroundColor Green
Write-Host "   7. Upgrade Specific Programs" -ForegroundColor Green
Write-Host " "
Write-Host "  10. Info About Powershell Module -PSWindowsUpdate" -ForegroundColor Green
Write-Host "  11. Info About Winget" -ForegroundColor Green

Write-Host " "
Write-Host " "
$x = Read-Host "Select The Number, You Will Like To Use.."
switch ($x) {
    condition {  }
    Default {Main}
    1 {GetWindowsUpdate}
    2 {WindowsUpdateAcceptAll}
    3 {GetWUHistory}
    4 {InstallSpecUpdate}
    5 {Wingetlist}
    6 {WingetupgradeAll}
    7 {WingetupgradeSpec}
    10 {PSWindowsUpdate}
    11 {Winget}
}

    
}
Main

Import-Module "${env:ProgramFiles}\Microsoft Dynamics NAV\110\Service\NavAdminTool.ps1" -DisableNameChecking

$AppName = "Rewards"
$ServiceInstance = "PV-NAV11-SE-CU1-DEV"

# Import settings
. $PSScriptRoot\_PowerShell\Set-Settings.ps1

$PSScriptRoot = Split-Path $MyInvocation.MyCommand.Definition -Parent
. (Join-Path $PSScriptRoot '.\_PowerShell\Set-Settings.ps1') 

$WorkspaceRoot = Convert-Path $PSScriptRoot/..
Set-Location $WorkspaceRoot

#Uninstall/Unpublish previous app 
Uninstall-NAVApp -ServerInstance $ServiceInstance -Name $AppName -ErrorAction SilentlyContinue 
Unpublish-NAVApp -ServerInstance $ServiceInstance -Name $AppName -ErrorAction SilentlyContinue

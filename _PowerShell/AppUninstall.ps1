# Global parameters
. .\_PowerShell\Set-Settings.ps1
# NAV cmdlets
Import-Module "${env:ProgramFiles}\Microsoft Dynamics NAV\$NavVersion\Service\NavAdminTool.ps1" -DisableNameChecking

# Uninstall & Unpublish previous app 
Uninstall-NAVApp -ServerInstance $ServiceInstance -Name $AppName -ErrorAction Stop | Out-Null  
Unpublish-NAVApp -ServerInstance $ServiceInstance -Name $AppName -ErrorAction Stop | Out-Null 

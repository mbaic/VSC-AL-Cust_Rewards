# Global parameters
. .\_PowerShell\Set-Settings.ps1
# NAV cmdlets
Import-Module "${env:ProgramFiles}\Microsoft Dynamics NAV\$NavVersion\Service\NavAdminTool.ps1" -DisableNameChecking

#Publish new app version
Publish-NAVApp -Path $AppFilePkg -ServerInstance $ServiceInstance -SkipVerification | Out-Null  

#Install new app version to the default tenant
Install-NAVApp -ServerInstance $ServiceInstance -Tenant Default -Name $AppName -Force -ErrorAction Stop | Out-Null 


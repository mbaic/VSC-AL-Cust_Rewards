Import-Module "${env:ProgramFiles}\Microsoft Dynamics NAV\110\Service\NavAdminTool.ps1" -DisableNameChecking

$AppName = "Rewards"
$ServiceInstance = "PV-NAV11-SE-CU1-DEV"
$AppFilePkg = "C:\_NAV_VSC_Git\VSC-AL-Cust_Rewards\BAM_Rewards_1.0.0.0.app"

#Publish new app version
Publish-NAVApp `
    -Path $AppFilePkg `
    -ServerInstance $ServiceInstance `
    -SkipVerification 

#Install new app version to the default tenant
Install-NAVApp -ServerInstance $ServiceInstance -Tenant Default -Name $AppName -Force -ErrorAction Stop | Out-Null 


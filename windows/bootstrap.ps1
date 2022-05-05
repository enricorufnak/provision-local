Set-ExecutionPolicy Unrestricted -Scope CurrentUser

ls -Recurse *.ps*1 | Unblock-File

#. $PSScriptRoot\scripts\remove-default-apps.ps1
#. $PSScriptRoot\scripts\identity.ps1
#. $PSScriptRoot\scripts\disable-services.ps1
#. $PSScriptRoot\scripts\block-telemetry.ps1
#. $PSScriptRoot\scripts\disable-windows-defender.ps1
#. $PSScriptRoot\scripts\remove-onedrive.ps1
#. $PSScriptRoot\scripts\optimize-windows-updates.ps1
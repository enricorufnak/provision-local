Import-Module -DisableNameChecking $PSScriptRoot\..\modules\Verify-Elevated.psm1

if (!(Verify-Elevated)) {
    # We are not running as an administrator, so relaunch as administrator

    # Create a new process object that starts PowerShell
    $newProcess = New-Object System.Diagnostics.ProcessStartInfo "PowerShell";
    # Specify the current script path and name as a parameter with added scope and support for scripts with spaces in it's path
    $newProcess.Arguments = "-noexit & '" + $script:MyInvocation.MyCommand.Path + "'"
    # Indicate that the process should be elevated
    $newProcess.Verb = "runas";

    # Start the new process
    [System.Diagnostics.Process]::Start($newProcess);

    # Exit from the current, unelevated, process
    Exit;
}

Write-Output "Configuring WindowsIdentity..."

# Set Computer Name
$computerSystemName = Read-Host -Prompt "Enter computer system name"
(Get-WmiObject Win32_ComputerSystem).Rename($computerSystemName) | Out-Null
Remove-Variable computerSystemName

## Set DisplayName for my account. Use only if you are not using a Microsoft Account
$myIdentity=[System.Security.Principal.WindowsIdentity]::GetCurrent()
$user = Get-WmiObject Win32_UserAccount | Where {$_.Caption -eq $myIdentity.Name}
$fullName = Read-Host -Prompt "Enter full name"
$user.FullName = $fullName
$user.Put() | Out-Null
Remove-Variable user
Remove-Variable myIdentity
Remove-Variable fullName

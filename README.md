# ![ZNicon32px](https://github.com/zeronetworks/zero-powershell/assets/54368644/fc9a0ed5-2c08-4d4d-87d5-07626f3baf38) ![MicrosoftPowerShellCore-32px](https://github.com/zeronetworks/zero-powershell/assets/54368644/92aa2c82-c60e-4357-ac8c-c04281b054ed) Zero Networks PowerShell

This repository contains PowerShell cmdlets for developers and administrators to develop, deploy,
administer, and manage Zero Networks Segment.

You can download the latest Zero Networks PowerShell module from the [PowerShell Gallery](https://www.powershellgallery.com/packages/ZeroNetworks/).
Make sure to use the latest version of [PowerShell Core](https://github.com/PowerShell/PowerShell/releases).

## Installation

### PowerShell Gallery

Run the following command in a PowerShell session to install the Zero Networks PowerShell module:

```powershell
Install-Module -Name ZeroNetworks -AllowPrerelease
```

The latest version of PowerShell 7 (PowerShell Core) is the recommended version of PowerShell for
use with the ZeroNetworks PowerShell module on all platforms including Windows, Linux, and macOS. This module
also runs on Windows PowerShell 5.1 with .NET Framework 4.7.2 DotNetFramework or higher.

If you have an earlier version of the ZeroNetworks PowerShell module installed from the PowerShell Gallery
and would like to update to the latest version, run the following command in a PowerShell session:

```powershell
Update-Module -Name ZeroNetworks -Scope CurrentUser -Force -AllowPrerelease
```

`Update-Module` installs the new version side-by-side with previous versions. It does not uninstall
the previous versions.

## Documentation

Documentation for each Zero Networks PowerShell module can be found [here](https://github.com/zeronetworks/zero-powershell/tree/master/src/ZN/docs)

### Discovering cmdlets

Use `Get-Command` to discover cmdlets within a specific module, or cmdlets that follow a specific
search pattern:

```powershell
# List all cmdlets in the ZeroNetworks module
Get-Command -Module ZeroNetworks

# List all cmdlets that contain ZNAsset in their name
Get-Command -Name '*ZNAsset*'

# List all cmdlets that contain ZNSetting in their name 
Get-Command -Name '*ZNSetting*'
```
### Cmdlet help and examples

To view the help content for a cmdlet, use the `Get-Help` cmdlet:

```powershell
# View basic help information for Connect-ZN 
Get-Help -Name Connect-ZN

# View the examples for Set-ZnAPIKey
Get-Help -Name Set-ZnAPIKey -Examples

# View the full help for Get-ZNAsset
Get-Help -Name Get-ZNAsset -Full
```

## Reporting Issues and Feedback

### Feedback & Issues

If you find any bugs or have feedback when using Zero Networks PowerShell, let us know in our GitHub repo or send an e-mail to: support[at]zeronetworks[dot]com


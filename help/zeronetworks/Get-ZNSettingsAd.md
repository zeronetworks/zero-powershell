---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znsettingsad
schema: 2.0.0
---

# Get-ZNSettingsAd

## SYNOPSIS
Get the AD settings in Asset Management

## SYNTAX

```
Get-ZNSettingsAd [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get the AD settings in Asset Management

## EXAMPLES

### Example 1: Get AD settings
```powershell
Get-ZNSettingsAd
```

```output
ActiveDirectoryInfoAllowInstallLinuxPackages           : True
ActiveDirectoryInfoDomainControllerFqdn                : dc01.posh.local
ActiveDirectoryInfoDomainName                          : posh.local
ActiveDirectoryInfoUseLdaps                            : False
ActiveDirectoryInfoUserFqdn                            : znremotemanagement
AllowNtlmFallback                                      : True
AutomationGroupsMonitoredGroupDomain                   : 
AutomationGroupsMonitoredGroupHasProtectionPolicy      : 
AutomationGroupsMonitoredGroupId                       : b:110003
AutomationGroupsMonitoredGroupName                     : All AD assets
ForestId                                               : f:a:0bec706b
LinuxAutomationGroupsMonitoredGroupDomain              : 
LinuxAutomationGroupsMonitoredGroupHasProtectionPolicy : 
LinuxAutomationGroupsMonitoredGroupId                  : b:110003
LinuxAutomationGroupsMonitoredGroupName                : All AD assets
ProtectedGroupDomain                                   : posh.local
ProtectedGroupHasProtectionPolicy                      : 
ProtectedGroupId                                       : g:a:s2FnXfXk
ProtectedGroupName                                     : ZeroNetworksProtectedAssets-DoNotModify
SecondaryDomains                                       : {}
UsePrimaryLinuxUserForAllDomains                       : True
UsePrimaryUserForAllDomains                            : True
```

This cmdlet returns the AD forest Id  settings.

## PARAMETERS

### -AccountName
this value is per customer / partner

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Read-ZNJWTtoken $env:ZNApiKey).aud.split(".")[0]
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsAdInfoResponse

## NOTES

## RELATED LINKS


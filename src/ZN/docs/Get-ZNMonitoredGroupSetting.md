---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/get-znmonitoredgroupsetting
schema: 2.0.0
---

# Get-ZNMonitoredGroupSetting

## SYNOPSIS
Get the monitored group settings in Asset Managment

## SYNTAX

```
Get-ZNMonitoredGroupSetting [<CommonParameters>]
```

## DESCRIPTION
Get the monitored group settings in Asset Managment

## EXAMPLES

### Example 1: Get the Asset Monitoring control setting
```powershell
Get-ZNMonitoredGroupSetting
```

```output
GroupId      GroupName                   ItemIsEnabled
-------      ---------                   -------------
g:a:usqapkU2 ZeroNetworksMonitoredAssets          True
```

This cmdlet gets the Active Directory Asset Monitoring control setting under Asset Management.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsMonitoredGroup

## NOTES

ALIASES

## RELATED LINKS


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsnetworkprotectionpolicy
schema: 2.0.0
---

# Get-ZNSettingsNetworkProtectionPolicy

## SYNOPSIS
Returns a list of network protection policies.

## SYNTAX

```
Get-ZNSettingsNetworkProtectionPolicy [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of network protection policies.

## EXAMPLES

### Example 1: List Network segmentation policies
```powershell
Get-ZNSettingsNetworkProtectionPolicy
```

```output
CreatedAt                    : 1720788122962
CreatedByEmail               : 
CreatedByEnforcementSource   : 4
CreatedById                  : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                : Zero Networks
CreatedByUserRole            : 1
Description                  : 
Enabled                      : False
ExistingMembersLearningDays  : 30
GroupId                      : g:s:04669ce2
GroupInfoDomain              : system
GroupInfoGuid                : b69e53c2-cf08-47bb-a5d1-c1b1f801d54c
GroupInfoHasProtectionPolicy : 
GroupInfoId                  : g:s:04669ce2
GroupInfoName                : Clients
Id                           : 22c13631-c31d-4698-a875-fa1327cf01b5
InitialProtectAt             : 1723380122955
NewMembersLearningDays       : 30
UpdatedAt                    : 1720788122962
```

This cmdlet lists Network segmentation policies.

## PARAMETERS

### -Limit
Limit the return results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Offset
Used to page through results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IProtectionPoliciesList

## NOTES

## RELATED LINKS


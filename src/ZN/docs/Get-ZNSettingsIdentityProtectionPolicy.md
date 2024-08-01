---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsidentityprotectionpolicy
schema: 2.0.0
---

# Get-ZNSettingsIdentityProtectionPolicy

## SYNOPSIS
Returns a list of identity protection policies.

## SYNTAX

```
Get-ZNSettingsIdentityProtectionPolicy [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of identity protection policies.

## EXAMPLES

### Example 1: List Identity segmentation policies
```powershell
Get-ZNSettingsIdentityProtectionPolicy
```

```output
CreatedAt                    : 1720788060631
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
Id                           : 14cf1464-2807-490b-8009-9ce1d736fd38
InitialProtectAt             : 1723380060630
NewMembersLearningDays       : 30
UpdatedAt                    : 1720788060631
```

This cmdlet lists Identity segmentation policies.

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


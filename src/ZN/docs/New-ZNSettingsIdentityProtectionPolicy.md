---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/new-znsettingsidentityprotectionpolicy
schema: 2.0.0
---

# New-ZNSettingsIdentityProtectionPolicy

## SYNOPSIS
Returns the identity protection policy that was created.

## SYNTAX

```
New-ZNSettingsIdentityProtectionPolicy -ExistingMembersLearningDays <Int32> -GroupId <String>
 -NewMembersLearningDays <Int32> [-Description <String>] [-Enabled] [-EnforceBlocks] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns the identity protection policy that was created.

## EXAMPLES

### Example 1: Create Identity Segmentation Policy
```powershell
$group = (Get-ZNGroup -Search servers).Items | where {$_.Domain -eq "system" -and $_.Name -eq "Servers"}
New-ZNSettingsIdentityProtectionPolicy -ExistingMembersLearningDays 30 -GroupId $group.id -NewMembersLearningDays 30 -Enabled:$false
```

```output
CreatedByEmail                  : 
CreatedByEnforcementSource      : 6
CreatedById                     : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
CreatedByName                   : powershell
CreatedByUserRole               : 4
GroupInfoDomain                 : system
GroupInfoGuid                   : 56779f63-9c03-4c5a-9312-cfc7964fc827
GroupInfoHasProtectionPolicy    : 
GroupInfoId                     : g:s:03669ce2
GroupInfoName                   : Servers
ItemCreatedAt                   : -62135596800000
ItemDescription                 : 
ItemEnabled                     : False
ItemExistingMembersLearningDays : 30
ItemGroupId                     : g:s:03669ce2
ItemId                          : 64f775d3-7c87-46a4-ac3c-8a21d340a645
ItemInitialProtectAt            : 1723380436341
ItemNewMembersLearningDays      : 30
ItemUpdatedAt                   : 
```

This cmdlet creates a new Identity segmentation policy.

## PARAMETERS

### -Description
.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Enabled
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnforceBlocks
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExistingMembersLearningDays
.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupId
.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NewMembersLearningDays
.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IProtectionPolicyResponse

## NOTES

## RELATED LINKS


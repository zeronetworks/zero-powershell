---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/update-znsettingsnetworkprotectionpolicy
schema: 2.0.0
---

# Update-ZNSettingsNetworkProtectionPolicy

## SYNOPSIS
Returns the updated settings for the network protection policy.

## SYNTAX

```
Update-ZNSettingsNetworkProtectionPolicy -ProtectionPolicyId <String> -ExistingMembersLearningDays <Int32>
 -NewMembersLearningDays <Int32> -PolicyType <Int32> [-Description <String>] [-Enabled] [-Id <String>]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns the updated settings for the network protection policy.

## EXAMPLES

### Example 1: Update Network segmentation policy
```powershell
$policy = Get-ZNSettingsNetworkProtectionPolicy | where {$_.Id -eq "22c13631-c31d-4698-a875-fa1327cf01b5"}
Update-ZNSettingsNetworkProtectionPolicy -ProtectionPolicyId $policy.Id -Enabled:$policy.Enabled -ExistingMembersLearningDays 60 -NewMembersLearningDays 60 -PolicyType $policy.PolicyType
```

```output
CreatedByEmail                       : 
CreatedByEnforcementSource           : 4
CreatedById                          : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                        : Zero Networks
CreatedByUserRole                    : 1
GroupInfoDomain                      : system
GroupInfoGuid                        : b69e53c2-cf08-47bb-a5d1-c1b1f801d54c
GroupInfoHasIdentityProtectionPolicy : False
GroupInfoHasNetworkProtectionPolicy  : False
GroupInfoId                          : g:s:04669ce2
GroupInfoName                        : Clients
ItemCreatedAt                        : 1720788122962
ItemDescription                      : 
ItemEnabled                          : False
ItemEnforceBlocks                    : False
ItemExistingMembersLearningDays      : 60
ItemGroupId                          : g:s:04669ce2
ItemId                               : 22c13631-c31d-4698-a875-fa1327cf01b5
ItemInitialProtectAt                 : 1725981649163
ItemNewMembersLearningDays           : 60
ItemPolicyType                       : 1
ItemUpdatedAt                        : 1720788122962
```

This cmdlet updates a Network segmentation policy.

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

### -Id
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

### -PolicyType
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

### -ProtectionPolicyId
The id of the protection policy

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


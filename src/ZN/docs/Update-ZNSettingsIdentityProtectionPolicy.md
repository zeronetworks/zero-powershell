---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/update-znsettingsidentityprotectionpolicy
schema: 2.0.0
---

# Update-ZNSettingsIdentityProtectionPolicy

## SYNOPSIS
Returns the updated settings for the identity protection policy.

## SYNTAX

```
Update-ZNSettingsIdentityProtectionPolicy -ProtectionPolicyId <String> -ExistingMembersLearningDays <Int32>
 -NewMembersLearningDays <Int32> -PolicyType <Int32> [-Description <String>] [-Enabled] [-Id <String>]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns the updated settings for the identity protection policy.

## EXAMPLES

### Example 1: Update Identity segmentation policy
```powershell
$policy = Get-ZNSettingsIdentityProtectionPolicy | where {$_.Id -eq "14cf1464-2807-490b-8009-9ce1d736fd38"}
Update-ZNSettingsIdentityProtectionPolicy -ProtectionPolicyId $policy.Id -Enabled:$policy.Enabled -ExistingMembersLearningDays 60 -NewMembersLearningDays 60 -PolicyType $policy.PolicyType
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
ItemCreatedAt                        : 1720788060631
ItemDescription                      : 
ItemEnabled                          : False
ItemEnforceBlocks                    : 
ItemExistingMembersLearningDays      : 60
ItemGroupId                          : g:s:04669ce2
ItemId                               : 14cf1464-2807-490b-8009-9ce1d736fd38
ItemInitialProtectAt                 : 1725981560665
ItemNewMembersLearningDays           : 60
ItemPolicyType                       : 2
ItemUpdatedAt                        : 1720788060631
```

This cmdlet updates an Identity segmentation policy.

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


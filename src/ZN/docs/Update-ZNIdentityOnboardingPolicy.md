---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/update-znidentityonboardingpolicy
schema: 2.0.0
---

# Update-ZNIdentityOnboardingPolicy

## SYNOPSIS
Returns the updated settings for the identity onboarding policy.

## SYNTAX

```
Update-ZNIdentityOnboardingPolicy -OnboardingPolicyId <String> -ExistingMembersLearningDays <Int32>
 -NewMembersLearningDays <Int32> [-AccountName <String>] [-Description <String>] [-Enabled] [-Id <String>]
 [-PolicyType <Int32>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns the updated settings for the identity onboarding policy.

## EXAMPLES

### Example 1: Update Identity onboarding policies
```powershell
Update-ZNIdentityOnboardingPolicy -OnboardingPolicyId "d7915c97-20ea-4639-852d-13cb3d5e228e" -ExistingMembersLearningDays 60 -NewMembersLearningDays 60
```

```output
CreatedByEmail                       : 
CreatedByEnforcementSource           : 4
CreatedById                          : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                        : Zero Networks
CreatedByUserRole                    : 1
GroupInfoDomain                      : system
GroupInfoGuid                        : 56779f63-9c03-4c5a-9312-cfc7964fc827
GroupInfoHasIdentityProtectionPolicy : False
GroupInfoHasNetworkProtectionPolicy  : False
GroupInfoId                          : g:s:03669ce2
GroupInfoName                        : Servers
ItemCreatedAt                        : 1726166871674
ItemDescription                      : 
ItemEnabled                          : True
ItemEnforceBlocks                    : 
ItemExistingMembersLearningDays      : 60
ItemGroupId                          : g:s:03669ce2
ItemId                               : d7915c97-20ea-4639-852d-13cb3d5e228e
ItemInitialProtectAt                 : 1731355076896
ItemNewMembersLearningDays           : 60
ItemPolicyType                       : 2
ItemUpdatedAt                        : 1726169643518
```

This cmdlet updates an identity onboarding policy.

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

### -OnboardingPolicyId
The id of the onboarding policy

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

### -PolicyType
.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 2
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


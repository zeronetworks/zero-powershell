---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/update-zngroupsmfaidentitypolicy
schema: 2.0.0
---

# Update-ZNGroupsMfaIdentityPolicy

## SYNOPSIS
Updates an identity MFA Policy.

## SYNTAX

```
Update-ZNGroupsMfaIdentityPolicy -GroupId <String> -GroupType <String> -ReactivePolicyId <String>
 [-AccountName <String>] [-Description <String>] [-ExcludedDstAssetIdsList <String[]>]
 [-ExcludedSrcAssetIdsList <String[]>] [-ExtraIdentityProtectionCategoryList <Int32[]>]
 [-FallbackToSingleLoggedOnUser] [-IdentityProtectionCategoryList <Int32[]>] [-MfaMethodsList <Int32[]>]
 [-OverrideBuiltins] [-RuleDuration <Int32>] [-SrcAssetIdsList <String[]>] [-SrcUserIdsList <String[]>]
 [-State <Int32>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Updates an identity MFA Policy.

## EXAMPLES

### Example 1: Update identity MFA policy
```powershell
$group = (Get-ZNMfaIdentityPoliciesDestinationCandidate -Search "domain controllers").items | where {$_.Id -like "g:t:*"}
Update-ZNAssetMfaIdentityPolicy -GroupId $group.id -GroupType tag -ReactivePolicyId ec33049b-4e27-4f73-8f6d-8db4f5ff1e59 -Description assettest
```

```output
CreatedByEmail                          : 
CreatedByEnforcementSource              : 5
CreatedById                             : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                           : Zero Networks
CreatedByUserRole                       : 1
DstEntityInfoId                         : 
DstEntityInfoName                       : 
ItemCreatedAt                           : 1713440556757
ItemDescription                         : assettest
ItemDstAssetId                          : b:112002
ItemExcludedDstAssetIdsList             : {}
ItemExcludedSrcAssetIdsList             : {}
ItemExcludedSrcAssetInfos               : {}
ItemExtraIdentityProtectionCategoryList : {}
ItemFallbackToSingleLoggedOnUser        : False
ItemId                                  : ec33049b-4e27-4f73-8f6d-8db4f5ff1e59
ItemIdentityProtectionCategoryList      : {5}
ItemInnerId                             : 
ItemMfaMethodsList                      : {2, 4}
ItemOverrideBuiltins                    : False
ItemRuleDuration                        : 6
ItemSrcAssetIdsList                     : {b:110001}
ItemSrcAssetInfos                       : {Any asset}
ItemSrcUserIdsList                      : {b:111001}
ItemSrcUserInfos                        : {Any user}
ItemState                               : 1
ItemUpdatedAt                           : 1713469629046
UpdatedById                             : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
UpdatedByName                           : powershell
```

This cmdlet updates an identity MFA policy.

## PARAMETERS

### -AccountName
Account Name

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

### -AsJob
Run the command as a job

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

### -Description
the policy description.

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

### -ExcludedDstAssetIdsList
excluded destinations

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludedSrcAssetIdsList
excluded sources

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExtraIdentityProtectionCategoryList
extra logon types to allow

```yaml
Type: System.Int32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FallbackToSingleLoggedOnUser
[Parameter(ParameterSetName = 'UpdateExpanded')]
[ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
[System.String]
 destination asset(s).
${DstAssetId},
 fallback to logged on user enable/disable.

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

### -GroupId
Group Id

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

### -GroupType
Group Type

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

### -IdentityProtectionCategoryList
MFA methods.

```yaml
Type: System.Int32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MfaMethodsList
MFA methods.

```yaml
Type: System.Int32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoWait
Run the command asynchronously

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

### -OverrideBuiltins
Override built in MFA policies

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

### -ReactivePolicyId
policy Id

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

### -RuleDuration
the rule expiration.

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

### -SrcAssetIdsList
source asset(s).

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SrcUserIdsList
source user(s).

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -State
the policy state.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IdentityReactivePolicy

## NOTES

## RELATED LINKS


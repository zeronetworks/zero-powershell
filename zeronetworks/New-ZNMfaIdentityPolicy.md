---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/new-znmfaidentitypolicy
schema: 2.0.0
---

# New-ZNMfaIdentityPolicy

## SYNOPSIS
Returns the properties of the identity MFA policy after creation.

## SYNTAX

```
New-ZNMfaIdentityPolicy -DstAssetId <String> -FallbackToSingleLoggedOnUser
 -IdentityProtectionCategoryList <Int32[]> -MfaMethodsList <Int32[]> -OverrideBuiltins -RuleDuration <Int32>
 -SrcAssetIdsList <String[]> -SrcUserIdsList <String[]> -State <Int32> [-AccountName <String>]
 [-Description <String>] [-ExcludedDstAssetIdsList <String[]>] [-ExcludedSrcAssetIdsList <String[]>]
 [-ExtraIdentityProtectionCategoryList <Int32[]>] [-RestrictLoginToOriginatingUser] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of the identity MFA policy after creation.

## EXAMPLES

### Example 1: Create an Identity MFA Policy
```powershell
$group = (Get-ZNMfaIdentityPoliciesDestinationCandidate -Search "domain controllers").items | where {$_.Id -like "g:t:*"}
$source = (Get-ZNMfaIdentityPoliciesSourceCandidate -Search "Any Asset").items
$users = (Get-ZNMfaIdentityPoliciesSourceUserCandidate -Search "Domain Admins").items
New-ZNMfaIdentityPolicy -DstAssetId $group.id -FallbackToSingleLoggedOnUser:$true -IdentityProtectionCategoryList @(5) -MfaMethodsList @(4) -OverrideBuiltins:$false -RuleDuration 6 -SrcAssetIdsList @($source.id) -SrcUserIdsList @($users.id) -State 1
```

```output
CreatedByEmail                          : 
CreatedByEnforcementSource              : 6
CreatedById                             : m:ea53c6e1d0072c5974ceec597b64989274b7ba5f
CreatedByName                           : powershell
CreatedByUserRole                       : 4
DstEntityInfoId                         : 
DstEntityInfoName                       : 
ItemCreatedAt                           : 1713403271254
ItemDescription                         : 
ItemDstAssetId                          : g:t:01669ce2
ItemExcludedDstAssetIdsList             : {}
ItemExcludedSrcAssetIdsList             : {}
ItemExcludedSrcAssetInfos               : {}
ItemExtraIdentityProtectionCategoryList : {}
ItemFallbackToSingleLoggedOnUser        : True
ItemId                                  : 68507e4b-8b34-4cab-9110-d28643260063
ItemIdentityProtectionCategoryList      : {5}
ItemInnerId                             : 
ItemMfaMethodsList                      : {4}
ItemOverrideBuiltins                    : False
ItemRuleDuration                        : 6
ItemSrcAssetIdsList                     : {b:110001}
ItemSrcAssetInfos                       : {Any asset}
ItemSrcUserIdsList                      : {g:a:3U1Z38mF}
ItemSrcUserInfos                        : {Domain Admins}
ItemState                               : 1
ItemUpdatedAt                           : 1713403271254
UpdatedById                             : 
UpdatedByName                           : 
```

This cmdlet creates an identity MFA policy.

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

### -DstAssetId
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

### -ExcludedDstAssetIdsList
.

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
.

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
.

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
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdentityProtectionCategoryList
.

```yaml
Type: System.Int32[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MfaMethodsList
.

```yaml
Type: System.Int32[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OverrideBuiltins
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RestrictLoginToOriginatingUser
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

### -RuleDuration
* '1' - Hour* '2' - Day* '3' - Week* '4' - Month* '5' - Never* '6' - 4 hours* '7' - 12 hours* '8' - 8 hours

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

### -SrcAssetIdsList
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SrcUserIdsList
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -State
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IIdentityReactivePolicyItem

## NOTES

## RELATED LINKS


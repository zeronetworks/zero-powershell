---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetidentityrule
schema: 2.0.0
---

# Get-ZNAssetIdentityRule

## SYNOPSIS
Returns the properties of an Identity rule.

## SYNTAX

### List (Default)
```
Get-ZNAssetIdentityRule -AssetId <String> [-AddAncestors] [-AddBuiltins] [-Cursor <Int64>] [-Filters <String>]
 [-Limit <Int32>] [-Search <String>] [-WithCount] [<CommonParameters>]
```

### Get
```
Get-ZNAssetIdentityRule -AssetId <String> -RuleId <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of an Identity rule.

## EXAMPLES

### Example 1: List asset identity rules
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local 
(Get-ZNAssetIdentityRule -AssetId $asset).ITems

CreatedAt     Id                                   UserInfos       AssetInfoName      ExcludedAssetInfos IdentityProtectionCategoryList ExpiresAt Rule
                                                                                                                                                  clas
                                                                                                                                                  s
---------     --                                   ---------       -------------      ------------------ ------------------------------ --------- ----
1700672773316 8f1fb334-a9bd-4037-930a-d72aee11cecb {Domain Admins} Domain controllers {}                 {1, 5}                         0
```

This cmdlet lists identity rules for an asset.

### Example 2: Get an identity rule for an asset.
```powershell
Get-ZNAssetIdentityRule -AssetId $asset -RuleId ff9cc79c-21b6-4363-82e1-da6bc6bbdaf0

AssetInfoId                        : 
AssetInfoName                      : 
CreatedByEmail                     : 
CreatedByEnforcementSource         : 6
CreatedById                        : m:b12c928ed7b931203e027dfb7147356fe7824412
CreatedByName                      : powershell
CreatedByUserRole                  : 4
ItemAction                         : 1
ItemAssetId                        : a:a:TeGEW52g
ItemCreatedAt                      : 1700752866802
ItemDescription                    : test
ItemExcludedAssetIdsList           : {}
ItemExcludedAssetInfos             : 
ItemExpiresAt                      : 0
ItemId                             : ff9cc79c-21b6-4363-82e1-da6bc6bbdaf0
ItemIdentityProtectionCategoryList : {5}
ItemParentId                       : 
ItemParentType                     : 0
ItemRuleclass                      : 
ItemState                          : 1
ItemUpdatedAt                      : 
ItemUserIdsList                    : {u:a:mACDNWcW}
ItemUserInfos                      : 
UpdatedByEmail                     : 
UpdatedByEnforcementSource         : 
UpdatedById                        : 
UpdatedByName                      : 
UpdatedByUserRole                  : 
```

This cmdlet gets an identity rule for an asset.

## PARAMETERS

### -AddAncestors
show rules where the asset is part of a group

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: $true
Accept pipeline input: False
Accept wildcard characters: False
```

### -AddBuiltins
show global rules

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AssetId
assetId to filter on

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

### -Cursor
cursor position to start at

```yaml
Type: System.Int64
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Filters
JSON string URI encoded set of fiters

```yaml
Type: System.String
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Limit
Limit the return results

```yaml
Type: System.Int32
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleId
The id of the rule

```yaml
Type: System.String
Parameter Sets: Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Search
Test to search for

```yaml
Type: System.String
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WithCount
return count of objects

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: $true
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IIdentityRule

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IIdentityRulesList

## NOTES

## RELATED LINKS


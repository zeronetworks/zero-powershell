---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znuseridentityrule
schema: 2.0.0
---

# Get-ZNUserIdentityRule

## SYNOPSIS
Returns an identity segmentation rule.

## SYNTAX

### List (Default)
```
Get-ZNUserIdentityRule -UserId <String> [-AddAncestors] [-AddBuiltins] [-Cursor <String>] [-Filters <String>]
 [-Limit <Int32>] [-Search <String>] [-WithCount] [<CommonParameters>]
```

### Get
```
Get-ZNUserIdentityRule -RuleId <String> -UserId <String> [<CommonParameters>]
```

## DESCRIPTION
Returns an identity segmentation rule.

## EXAMPLES

### Example 1: List identity rules for a user
```powershell
(Get-ZNUserIdentityRule -UserId u:a:mACDNWcW).Items
```

```output
CreatedAt     Id                                   UserInfos AssetInfoName ExcludedAssetInfos IdentityProtectionCategory
                                                                                              List
---------     --                                   --------- ------------- ------------------ --------------------------
1700752866802 ff9cc79c-21b6-4363-82e1-da6bc6bbdaf0 {svc1}    dc01          {}                 {5} 
```

This cmdlet lists identity rules for a user.

### Example 2: Get an identity rule
```powershell
Get-ZNUserIdentityRule -UserId "u:a:mACDNWcW" -RuleId ff9cc79c-21b6-4363-82e1-da6bc6bbdaf0 -Debug
```

```output
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

This cmdlet gets an identity rule for a user.

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

### -Cursor
cursor position to start at

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

### -UserId
userId to filter on

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IIdentityRuleItem

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IIdentityRulesList

## NOTES

## RELATED LINKS


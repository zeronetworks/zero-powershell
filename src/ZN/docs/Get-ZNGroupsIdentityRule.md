---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-zngroupsidentityrule
schema: 2.0.0
---

# Get-ZNGroupsIdentityRule

## SYNOPSIS
Returns an identity segmentation rule.

## SYNTAX

### List (Default)
```
Get-ZNGroupsIdentityRule -GroupId <String> -GroupType <String> [-AddAncestors] [-AddBuiltins]
 [-Cursor <String>] [-Filters <String>] [-Limit <Int32>] [-Search <String>] [-WithCount] [<CommonParameters>]
```

### Get
```
Get-ZNGroupsIdentityRule -GroupId <String> -GroupType <String> -RuleId <String> [<CommonParameters>]
```

## DESCRIPTION
Returns an identity segmentation rule.

## EXAMPLES

### Example 1: Get identity rules for a group
```powershell
(Get-ZNGroupsIdentityRule -GroupId g:t:018cf3ae -GroupType tag).Items
```

```output
CreatedAt     Id                                   UserInfos       AssetInfoName      ExcludedAssetInfos IdentityProtect
                                                                                                         ionCategoryList
---------     --                                   ---------       -------------      ------------------ ---------------
1700673565762 9b3b398c-e5d6-47f9-831f-617752549d1f {Domain Admins} Domain controllers {}                 {1, 5}
```

This cmdlet lists identity rules for a group.

### Example 2: Get an identity rule for a group
```powershell
Get-ZNGroupsIdentityRule -GroupId g:t:018cf3ae -GroupType tag -RuleId 9b3b398c-e5d6-47f9-831f-617752549d1f
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
ItemAssetId                        : g:t:018cf3ae
ItemCreatedAt                      : 1700673565762
ItemDescription                    : 
ItemExcludedAssetIdsList           : {}
ItemExcludedAssetInfos             : 
ItemExpiresAt                      : 0
ItemId                             : 9b3b398c-e5d6-47f9-831f-617752549d1f
ItemIdentityProtectionCategoryList : {1, 5}
ItemParentId                       : 
ItemParentType                     : 0
ItemRuleclass                      : 
ItemState                          : 1
ItemUpdatedAt                      : 
ItemUserIdsList                    : {g:a:kuxROJQU}
ItemUserInfos                      : 
UpdatedByEmail                     : 
UpdatedByEnforcementSource         : 
UpdatedById                        : 
UpdatedByName                      : 
UpdatedByUserRole                  : 
```

This cmdlet gets an identity rule for a group.

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

### -GroupId
groupId to filter on

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
group type to filter on

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IIdentityRuleItem

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IIdentityRulesList

## NOTES

## RELATED LINKS


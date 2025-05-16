---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znassetoutboundotrule
schema: 2.0.0
---

# Get-ZNAssetOutboundOtRule

## SYNOPSIS
get an Asset Rule

## SYNTAX

### List (Default)
```
Get-ZNAssetOutboundOtRule -AssetId <String> [-AccountName <String>] [-AddAncestors] [-AddBuiltins]
 [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-Order <String>] [-OrderColumns <String>]
 [<CommonParameters>]
```

### Get
```
Get-ZNAssetOutboundOtRule -AssetId <String> -RuleId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
get an Asset Rule

## EXAMPLES

### Example 1: List outbound OT rule
```powershell
(Get-ZNAssetOtOutboundOtrule -AssetId $asset).Items
```

```output
Action                     : 1
ActivitiesCount            : 0
ApprovedAt                 : 
ApprovedById               : 
ApprovedByName             : 
CreatedAt                  : 1744138288203
CreatedByEmail             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
Description                : 
Direction                  : 2
ExcludedAssetInfos         : {}
ExcludedLocalIdsList       : {}
ExpiresAt                  : 
Id                         : R:s:BGoWJ5OZ
LocalEntityId              : b:114002
LocalEntityInfos           : {Segmented OT/IoT devices}
LocalProcessesList         : {*}
MirrorNetworkRuleId        : 
MirrorSwitchRuleId         : 
MultipleLocalEntityIdsList : {}
PolicyParentRuleId         : 
PolicyParentRuleType       : 0
ProtocolsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.SwitchProtocolsList}
RemoteEntitiesIdList       : {a:a:JF2xro6g}
RemoteEntitiesInfos        : {DC01}
ServicesList               : {}
ShouldBuildMirrorRules     : True
SrcUserInfos               : {}
SrcUsersList               : {}
State                      : 1
SwitchParentRuleId         : 
SwitchParentRuleType       : 0
UpdatedAt                  : 
UpdatedById                : 
UpdatedByName              : 
```

This cmdlet lists outbound OT rules.

### Example 2: Get outbound OT rule
```powershell
Get-ZNAssetOtOutboundOtrule -AssetId $asset -RuleId R:s:BGoWJ5OZ
```

```output
ApprovedById                   : 
ApprovedByName                 : 
CreatedByEmail                 : 
CreatedByEnforcementSource     : 5
CreatedById                    : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                  : Zero Networks
CreatedByUserRole              : 1
ItemAction                     : 1
ItemActivitiesCount            : 0
ItemApprovedAt                 : 
ItemCreatedAt                  : 1744138288203
ItemDescription                : 
ItemDirection                  : 2
ItemExcludedAssetInfos         : {}
ItemExcludedLocalIdsList       : {}
ItemExpiresAt                  : 
ItemId                         : R:s:BGoWJ5OZ
ItemLocalEntityId              : b:114002
ItemLocalEntityInfos           : {Segmented OT/IoT devices}
ItemLocalProcessesList         : {*}
ItemMirrorNetworkRuleId        : 
ItemMirrorSwitchRuleId         : 
ItemMultipleLocalEntityIdsList : {}
ItemPolicyParentRuleId         : 
ItemPolicyParentRuleType       : 0
ItemProtocolsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.SwitchProtocolsList}
ItemRemoteEntitiesIdList       : {a:a:JF2xro6g}
ItemRemoteEntitiesInfos        : {DC01}
ItemServicesList               : {}
ItemShouldBuildMirrorRules     : True
ItemSrcUserInfos               : {}
ItemSrcUsersList               : {}
ItemState                      : 1
ItemSwitchParentRuleId         : 
ItemSwitchParentRuleType       : 0
ItemUpdatedAt                  : 
UpdatedById                    : 
UpdatedByName                  : 
```

This cmdlet gets an outbound OT rule.

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

### -Filters
JSON string URI encoded set of filters

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

### -Offset
Used to page through results

```yaml
Type: System.Int32
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Order
What order to sort the results

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

### -OrderColumns
what column to order on

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISwitchRuleItem

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISwitchRulesList

## NOTES

## RELATED LINKS


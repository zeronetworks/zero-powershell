---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znrpcrule
schema: 2.0.0
---

# Get-ZNRpcRule

## SYNOPSIS
Returns the properties of an RPC rule.

## SYNTAX

### List (Default)
```
Get-ZNRpcRule [-AccountName <String>] [-AddAncestors] [-AddBuiltins] [-Filters <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-WithCount] [<CommonParameters>]
```

### Get
```
Get-ZNRpcRule -RuleId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of an RPC rule.

## EXAMPLES

### Example 1: List RPC Rules
```powershell
(Get-ZNRpcRule).Items
```

```output
Action                     : 1
CreatedAt                  : 1708005695367
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
Description                : 
ExcludedAssetIdsList       : {}
ExcludedAssetInfos         : {}
ExpiresAt                  : 0
Id                         : 9d607d06-73cf-4ab6-a9dc-0ccf72e146f3
InterfaceUuidsList         : {}
LocalAssetId               : g:t:01669ce2
LocalAssetInfoId           : g:t:01669ce2
LocalAssetInfoName         : Domain controllers
OpNumbersList              : {}
ParentId                   : 
ParentType                 : 0
ProtocolsList              : {}
RemoteAssetIdsList         : {a:t:itN4uaLX, g:t:01669ce2}
RemoteAssetInfos           : {switch01, Domain controllers}
RuleClass                  : 1
State                      : 1
UpdatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
UpdatedByName              : Zero Networks
UserIdsList                : {b:111001}
UserInfos                  : {Any user}
```

This cmdlet lists the RPC Rules.

### Example 2: Get a RPC Rule
```powershell
Get-ZNRpcRule -RuleId '9d607d06-73cf-4ab6-a9dc-0ccf72e146f3'
```

```output
Action                     : 1
CreatedAt                  : 1708005695367
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
Description                : 
ExcludedAssetIdsList       : {}
ExcludedAssetInfos         : {}
ExpiresAt                  : 0
Id                         : 9d607d06-73cf-4ab6-a9dc-0ccf72e146f3
InterfaceUuidsList         : {}
LocalAssetId               : g:t:01669ce2
LocalAssetInfoId           : g:t:01669ce2
LocalAssetInfoName         : Domain controllers
OpNumbersList              : {}
ParentId                   : 
ParentType                 : 0
ProtocolsList              : {}
RemoteAssetIdsList         : {a:t:itN4uaLX, g:t:01669ce2}
RemoteAssetInfos           : {switch01, Domain controllers}
RuleClass                  : 1
State                      : 1
UpdatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
UpdatedByName              : Zero Networks
UserIdsList                : {b:111001}
UserInfos                  : {Any user}
```

This cmdlet gets a RPC Rule.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IRpcRuleResponse

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IRpcRulesList

## NOTES

## RELATED LINKS


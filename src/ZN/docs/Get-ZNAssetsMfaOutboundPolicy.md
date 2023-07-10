---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetsmfaoutboundpolicy
schema: 2.0.0
---

# Get-ZNAssetsMfaOutboundPolicy

## SYNOPSIS
Returns the properties of an outbound MFA policy.

## SYNTAX

### List (Default)
```
Get-ZNAssetsMfaOutboundPolicy -AssetId <String> [-AddAncestors] [-AddBuiltins] [-Filters <String>]
 [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

### Get
```
Get-ZNAssetsMfaOutboundPolicy -AssetId <String> -ReactivePolicyId <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of an outbound MFA policy.

## EXAMPLES

### Example 1: List outbound MFA polciies for a specific asset
```powershell
Get-ZNAssetsMfaOutboundPolicy -AssetId a:a:8ErCHXe8 -AddBuiltins
```

```output
SrcEntityInfos         SrcProcessNames SrcUserInfos DstEntityInfoName        DstPort DstProcessNames RuleDuration FallbackToLoggedOnUser MfaMethods
--------------         --------------- ------------ -----------------        ------- --------------- ------------ ---------------------- ----------
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 62425   {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 1870    {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 38008   {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 15344   {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 52931   {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 59623   {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 21973   {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 32797   {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 80,443  {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 22      {*}             6            True                   {4}
```

This cmdlet lists outbound MFA policies for a specific asset.

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

### -Offset
Used to page through results

```yaml
Type: System.Int32
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReactivePolicyId
The id of the MFA policy

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IReactivePolicy

## NOTES

ALIASES

## RELATED LINKS


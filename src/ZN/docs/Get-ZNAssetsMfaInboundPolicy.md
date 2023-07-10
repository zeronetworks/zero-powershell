---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetsmfainboundpolicy
schema: 2.0.0
---

# Get-ZNAssetsMfaInboundPolicy

## SYNOPSIS
Returns a inbound MFA policy object.

## SYNTAX

### List (Default)
```
Get-ZNAssetsMfaInboundPolicy -AssetId <String> [-AddAncestors] [-AddBuiltins] [-EntityId <String>]
 [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

### Get
```
Get-ZNAssetsMfaInboundPolicy -AssetId <String> -ReactivePolicyId <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a inbound MFA policy object.

## EXAMPLES

### Example 1: List inbound MFA policies for a specific asset
```powershell
Get-ZNAssetsMfaInboundPolicy -AssetId 'a:a:OtfLGUBq'
```

```output
SrcEntityInfos SrcProcessNames SrcUserInfos DstEntityInfoName  DstPort DstProcessNames RuleDuration FallbackToLoggedOnUser MfaMethods
-------------- --------------- ------------ -----------------  ------- --------------- ------------ ---------------------- ----------
{Clients}      {pwsh.exe}      {Any user}   Domain controllers 3389    {*}             1            True                   {5}
```

This cmdlet gets inbound MFA policies from the environment.

### Example 2: Get a specific inbound MFA policy
```powershell
Get-ZNAssetsMfaInboundPolicy -AssetId 'a:a:OtfLGUBq' -ReactivePolicyId 1bedf6e4-2ed5-4e3a-987c-469baefd057b```

```

DstEntityInfoAssetStatus     : 
DstEntityInfoAssetType       : 
DstEntityInfoDomain          : 
DstEntityInfoFqdn            : 
DstEntityInfoId              : g:t:01445453
DstEntityInfoIpv4Addresses   : 
DstEntityInfoIpv6Addresses   : 
DstEntityInfoName            : Domain controllers
DstEntityInfoOperatingSystem : 
DstEntityInfoProtectionState : 
DstEntityInfoSource          : 
ItemAdditionalPortsList      : {}
ItemCreatedAt                : 1681400577369
ItemCreatedBy                : 1f352ed0-86f1-454f-90a5-592c197c8000
ItemCreatedByName            : Zero Networks
ItemDescription              : 
ItemDstPort                  : 3389
ItemDstProcessNames          : {*}
ItemEnforcementSource        : 5
ItemExcludedSrcEntityInfos   : {}
ItemExcludedSrcProcesses     : {}
ItemFallbackToLoggedOnUser   : True
ItemId                       : 1bedf6e4-2ed5-4e3a-987c-469baefd057b
ItemMfaMethods               : {5}
ItemOverrideBuiltins         : True
ItemProtocolType             : 6
ItemRuleDuration             : 1
ItemSrcEntityInfos           : {Clients}
ItemSrcProcessNames          : {pwsh.exe}
ItemSrcUserInfos             : {Any user}
ItemState                    : 1
ItemUpdatedAt                : 1681400675551
StateAssetId                 : 
StateIsAssetConnected        : 
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 
```

Get a specific inbound MFA policy.

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

### -EntityId
entityId to filter on

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


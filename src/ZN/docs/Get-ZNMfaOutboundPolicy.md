---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znmfaoutboundpolicy
schema: 2.0.0
---

# Get-ZNMfaOutboundPolicy

## SYNOPSIS
Returns the properties of an outbound MFA policy.

## SYNTAX

### List (Default)
```
Get-ZNMfaOutboundPolicy [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

### Get
```
Get-ZNMfaOutboundPolicy -ReactivePolicyId <String> [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of an outbound MFA policy.

## EXAMPLES

### Example 1: List outbound MFA policies
```powershell
Get-ZNOutboundBlockRule
```

```output
Action CreatedAt     Description                               Direction ExcludedLocalIdsList ExpiresAt Id                                   LocalEntityId LocalProcessesList ParentId ParentType RemoteEntityIds
                                                                                                                                                                                                  List
------ ---------     -----------                               --------- -------------------- --------- --                                   ------------- ------------------ -------- ---------- ---------------
2      1665759335488                                           2         {}                   0         b4becec7-378d-4e8a-a8f9-fa31f644d74c b:110002      {*}                         0          {b:12010203042…
2      1665679730342 Test Rule                                 2         {}                   0         627e3705-2f26-4cb6-b5e2-b73b76d900b2 b:110002      {*}                         0          {b:12010101012…
2      1648736821514 Sentinel Integration - Block Malicous IPs 2         {}                   0         0faafa72-2540-4d55-9418-ed62472e0e2d b:110002      {*}                         0          {b:12ac1001012…
```

This cmdlet gets outbound MFA policies from the environment.

### Example 2: Get a specific outbound MFA policy
```powershell
Get-ZNMfaOutboundPolicy -ReactivePolicyId "cff54715-454b-4309-9b70-3055d80a8379"
```

```output
ItemAdditionalPortsList    : {}
ItemCreatedAt              : 1665512193635
ItemCreatedBy              : 1f352ed0-86f1-454f-90a5-592c197c8000
ItemCreatedByName          : Zero Networks
ItemDescription            : 
ItemDstEntityInfos         : 
ItemDstPort                : 443
ItemDstProcessNames        : {*}
ItemFallbackToLoggedOnUser : False
ItemId                     : cff54715-454b-4309-9b70-3055d80a8379
ItemMfaMethods             : {2}
ItemProtocolType           : 6
ItemRuleDuration           : 1
ItemSrcEntityInfos         : {All protected assets}
ItemSrcProcessNames        : {*}
ItemSrcUserInfos           : {Any user}
ItemState                  : 1
ItemUpdatedAt              : 1665512193635
```

Get a specific outbound MFA policy.

## PARAMETERS

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


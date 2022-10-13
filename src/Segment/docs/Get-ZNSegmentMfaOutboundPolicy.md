---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/get-znsegmentmfaoutboundpolicy
schema: 2.0.0
---

# Get-ZNSegmentMfaOutboundPolicy

## SYNOPSIS
Get an inbound MFA policy

## SYNTAX

### List (Default)
```
Get-ZNSegmentMfaOutboundPolicy [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

### Get
```
Get-ZNSegmentMfaOutboundPolicy -ReactivePolicyId <String> [<CommonParameters>]
```

## DESCRIPTION
Get an inbound MFA policy

## EXAMPLES

### Example 1: List outbound MFA policies
```powershell
Get-ZNSegmentOutboundBlockRule
```

```output
CreatedAt     CreatedBy                            CreatedByName Description DstPort DstProcessNames FallbackToLoggedOnUser Id                                   MfaMethods ProtocolType RuleCreationMode RuleDuration SrcProcessNames State UpdatedAt
---------     ---------                            ------------- ----------- ------- --------------- ---------------------- --                                   ---------- ------------ ---------------- ------------ --------------- ----- ---------
1665512193635 1f352ed0-86f1-454f-90a5-592c197c8000 Zero Networks             443     {*}             False                  cff54715-454b-4309-9b70-3055d80a8379 {2}        6            1                1            {*}             1     1665512193635
```

This cmdlet gets outbound MFA policies from the environment.

### Example 2: Get a specific outbound MFA policy
```powershell
Get-ZNSegmentMfaOutboundPolicy -ReactivePolicyId "cff54715-454b-4309-9b70-3055d80a8379"
```

```output
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
ItemRuleCreationMode       : 1
ItemRuleDuration           : 1
ItemSrcEntityInfos         : {}
ItemSrcProcessNames        : {*}
ItemSrcUserInfos           : {}
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
.

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
.

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

### System.String

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IReactivePolicy

## NOTES

ALIASES

## RELATED LINKS


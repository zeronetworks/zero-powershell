---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/get-znsegmentmfainboundpolicy
schema: 2.0.0
---

# Get-ZNSegmentMfaInboundPolicy

## SYNOPSIS
Get an inbound MFA policy

## SYNTAX

### List (Default)
```
Get-ZNSegmentMfaInboundPolicy [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

### Get
```
Get-ZNSegmentMfaInboundPolicy -ReactivePolicyId <String> [<CommonParameters>]
```

## DESCRIPTION
Get an inbound MFA policy

## EXAMPLES

### Example 1: List inbound MFA policies
```powershell
Get-ZNSegmentMfaInboundPolicy
```

```output
CreatedAt     CreatedBy                            CreatedByName Description DstPort DstProcessNames FallbackToLoggedOnUser Id                                   MfaMethods   ProtocolType RuleCreationMode RuleDuration SrcProcessNames State UpdatedAt
---------     ---------                            ------------- ----------- ------- --------------- ---------------------- --                                   ----------   ------------ ---------------- ------------ --------------- ----- ---------
1649105796514 1f352ed0-86f1-454f-90a5-592c197c8000 Zero Networks             345     {*}             False                  f68d322c-1cb0-451d-aff2-c920a1a17333 {1}          6            1                6            {*}             1     1649105796514
1646149214106 1f352ed0-86f1-454f-90a5-592c197c8000 Zero Networks             3389    {*}             False                  1bb6439f-ee73-4b7e-b555-30dbbd17418e {1, 2, 3, 4} 6            1                6            {*}             1     1646230297277
```

This cmdlet gets inbound MFA policies from the environment.

### Example 2: Get a specific inbound MFA policy
```powershell
Get-ZNSegmentMfaInboundPolicy -ReactivePolicyId "f68d322c-1cb0-451d-aff2-c920a1a17333"
```

```output
ItemCreatedAt              : 1649105796514                                                                                                                                                                                                                         ItemCreatedBy              : 1f352ed0-86f1-454f-90a5-592c197c8000
ItemCreatedByName          : Zero Networks
ItemDescription            : 
ItemDstEntityInfos         : 
ItemDstPort                : 345
ItemDstProcessNames        : {*}
ItemFallbackToLoggedOnUser : False
ItemId                     : f68d322c-1cb0-451d-aff2-c920a1a17333
ItemMfaMethods             : {1}
ItemProtocolType           : 6
ItemRuleCreationMode       : 1
ItemRuleDuration           : 6
ItemSrcEntityInfos         : {}
ItemSrcProcessNames        : {*}
ItemSrcUserInfos           : {}
ItemState                  : 1
ItemUpdatedAt              : 1649105796514
```

Get a specific inbound MFA policy.

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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IApiError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IReactivePolicy

## NOTES

ALIASES

## RELATED LINKS


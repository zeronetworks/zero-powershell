---
external help file:
Module Name: ZN.Segment
online version: https://test.comzn.segment/get-znsegmentmfaoutboundpoliciessimulatedesinationcandidate
schema: 2.0.0
---

# Get-ZNSegmentMfaOutboundPoliciesSimulateDesinationCandidate

## SYNOPSIS
Get destination assets for outbound MFA simulation

## SYNTAX

```
Get-ZNSegmentMfaOutboundPoliciesSimulateDesinationCandidate [-Limit <Int32>] [-Offset <Int32>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Get destination assets for outbound MFA simulation

## EXAMPLES

### Example 1: Get possible destinations for outbound MFA Policy simulation
```powershell
(Get-ZNSegmentMfaOutboundPoliciesSimulateDesinationCandidate).Items
```

```output
AssetType Domain Id           Name   ProtectionState
--------- ------ --           ----   ---------------
4                a:t:oxafRZct webcam 1
```

This cmdlet will return possbile candidates for destinations in an outbound MFA policy simulation.

### Example 2: Search for a candidate
```powershell
(Get-ZNSegmentMfaOutboundPoliciesSimulateDesinationCandidate -Search webcam).Items
```

```output
AssetType Domain Id           Name   ProtectionState
--------- ------ --           ----   ---------------
4                a:t:oxafRZct webcam 1
```

To find a specific candidate use the search parameter with the Name to be searched.

## PARAMETERS

### -Limit
.

```yaml
Type: System.Int32
Parameter Sets: (All)
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
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Search
.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.ICandidatesList

## NOTES

ALIASES

## RELATED LINKS


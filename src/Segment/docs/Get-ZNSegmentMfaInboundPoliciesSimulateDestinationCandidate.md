---
external help file:
Module Name: ZN.Segment
online version: https://test.comzn.segment/get-znsegmentmfainboundpoliciessimulatedestinationcandidate
schema: 2.0.0
---

# Get-ZNSegmentMfaInboundPoliciesSimulateDestinationCandidate

## SYNOPSIS
Get destination assets for MFA simulation

## SYNTAX

```
Get-ZNSegmentMfaInboundPoliciesSimulateDestinationCandidate [-Limit <Int32>] [-Offset <Int32>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Get destination assets for MFA simulation

## EXAMPLES

### Example 1: Get possible destinations for inbound MFA Policy simulation
```powershell
(Get-ZNSegmentMfaInboundPoliciesSimulateDestinationCandidate).Items
```

```output
AssetType Domain    Id           Name    ProtectionState
--------- ------    --           ----    ---------------
2         zero.labs a:a:ZgBWOMyc DC1     5
2         zero.labs a:a:GnyWAsYs FS1     3
2         zero.labs a:a:EP2KKITZ TRUST1  3
1         zero.labs a:a:6BokfBbU WIN10-1 3
1         zero.labs a:a:HYZhxRzI WIN10-2 3
1         zero.labs a:a:qnRgyRA9 WIN10-3 3
1         zero.labs a:a:5wiknOhs WIN7    3
1         zero.labs a:a:cxIJepiA win8-1  3
```

This cmdlet will return possbile candidates for destinations in an inbound MFA policy simulation.

### Example 2: Search for a candidate
```powershell
(Get-ZNSegmentMfaInboundPoliciesSimulateDestinationCandidate -Search DC1).Items
```

```output
AssetType Domain    Id           Name ProtectionState
--------- ------    --           ---- ---------------
2         zero.labs a:a:ZgBWOMyc DC1  5
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


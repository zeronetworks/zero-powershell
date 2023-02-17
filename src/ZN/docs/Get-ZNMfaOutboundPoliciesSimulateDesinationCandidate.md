---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/get-znmfaoutboundpoliciessimulatedesinationcandidate
schema: 2.0.0
---

# Get-ZNMfaOutboundPoliciesSimulateDesinationCandidate

## SYNOPSIS
Returns a list of destination candidates on outbound MFA simulation.

## SYNTAX

```
Get-ZNMfaOutboundPoliciesSimulateDesinationCandidate [-Limit <Int32>] [-Offset <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of destination candidates on outbound MFA simulation.

## EXAMPLES

### Example 1: Get possible destinations for outbound MFA Policy simulation
```powershell
(Get-ZNMfaOutboundPoliciesSimulateDesinationCandidate).Items
```

```output
AssetType Domain Id           Name   ProtectionState
--------- ------ --           ----   ---------------
4                a:t:oxafRZct webcam 1
```

This cmdlet will return possbile candidates for destinations in an outbound MFA policy simulation.

### Example 2: Search for a candidate
```powershell
(Get-ZNMfaOutboundPoliciesSimulateDesinationCandidate -Search webcam).Items
```

```output
AssetType Domain Id           Name   ProtectionState
--------- ------ --           ----   ---------------
4                a:t:oxafRZct webcam 1
```

To find a specific candidate use the search parameter with the Name to be searched.

## PARAMETERS

### -Limit
Limit the return results

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
Used to page through results

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
Test to search for

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ICandidatesList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS


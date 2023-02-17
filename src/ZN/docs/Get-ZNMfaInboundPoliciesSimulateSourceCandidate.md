---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/get-znmfainboundpoliciessimulatesourcecandidate
schema: 2.0.0
---

# Get-ZNMfaInboundPoliciesSimulateSourceCandidate

## SYNOPSIS
Returns a list of source candidates on inbound MFA simulation.

## SYNTAX

```
Get-ZNMfaInboundPoliciesSimulateSourceCandidate [-Limit <Int32>] [-Offset <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of source candidates on inbound MFA simulation.

## EXAMPLES

### Example 1: Get possible sources for inbound MFA Policy simulation
```powershell
(Get-ZNMfaInboundPoliciesSimulateSourceCandidate).Items
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

This cmdlet will return possbile candidates for sources in an inbound MFA policy simulation.

### Example 2: Search for a candidate
```powershell
(Get-ZNMfaInboundPoliciesSimulateSourceCandidate -Search DC1).Items
```

```output
AssetType Domain    Id           Name ProtectionState
--------- ------    --           ---- ---------------
2         zero.labs a:a:ZgBWOMyc DC1  5
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


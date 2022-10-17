---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/get-znsegmentmfaoutboundpoliciessimulatesourceusercandidate
schema: 2.0.0
---

# Get-ZNSegmentMfaOutboundPoliciesSimulateSourceUserCandidate

## SYNOPSIS
Get source users for outbound MFA simulation

## SYNTAX

```
Get-ZNSegmentMfaOutboundPoliciesSimulateSourceUserCandidate [-Limit <Int32>] [-Offset <Int32>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Get source users for outbound MFA simulation

## EXAMPLES

### Example 1: Get possible source users for outbound MFA Policy simulation
```powershell
(Get-ZNSegmentMfaOutboundPoliciesSimulateSourceUserCandidate).Items 
```

```output
Domain Id           Name
------ --           ----
       u:a:eTpnZu08 Administrator
       u:a:iGn4Hiqf Amir Duo
       u:a:PfGBMNXZ Amir Frankel
       u:a:ILBOlZpe Benny Duo
       u:a:JinEj0u0 Benny Lakunishok
       u:a:7Fp0hF2k duo account
       u:a:sJKzqaGn Ema Duo
       u:a:5bMryabz Emanuele Bianchi
       u:a:qRcDkgrW Guest
       u:a:r0HtwNuC krbtgt
```

This cmdlet will return possbile candidates for source users in an outbound MFA policy simulation.

### Example 2: Search for a candidate
```powershell
(Get-ZNSegmentMfaOutboundPoliciesSimulateSourceUserCandidate).Items
```

```output
Domain Id           Name
------ --           ----
       u:a:eTpnZu08 Administrator
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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IApiError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.ISrcUserCandidatesList

## NOTES

ALIASES

## RELATED LINKS


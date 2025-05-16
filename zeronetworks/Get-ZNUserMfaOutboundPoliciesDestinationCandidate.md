---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znusermfaoutboundpoliciesdestinationcandidate
schema: 2.0.0
---

# Get-ZNUserMfaOutboundPoliciesDestinationCandidate

## SYNOPSIS
Returns a list of destination candidates on outbound MFA policies.

## SYNTAX

```
Get-ZNUserMfaOutboundPoliciesDestinationCandidate -UserId <String> [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of destination candidates on outbound MFA policies.

## EXAMPLES

### Example 1: List destination candidates for a MFA policy
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
(Get-ZNUserMfaOutboundPoliciesDestinationCandidate -UserId $user.id).Items
```

```output
Id           Name                                       Domain
--           ----                                       ------
g:s:17da83cd Segmented OT/IoT devices                   
g:o:1Lda83cd 3D Printer                                 OT/IoT
g:o:1Kda83cd Access control devices                     OT/IoT
g:o:1Mda83cd Access control gateway                     OT/IoT
a:t:BPFR4ZlN activeOT                                   
g:o:1Nda83cd ATM                                        OT/IoT
g:o:1Oda83cd Audio decoder                              OT/IoT
g:o:0qda83cd Autonomous vehicles                        OT/IoT
g:o:1Pda83cd AV system                                  OT/IoT
g:o:0fda83cd BACnet broadcast management devices (BBMD) OT/IoT
g:o:1Qda83cd BACnet router & BBMD                       OT/IoT
```

This cmdlet lists destination candidates for an MFA policy.

## PARAMETERS

### -AccountName
this value is per customer / partner

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Read-ZNJWTtoken $env:ZNApiKey).aud.split(".")[0]
Accept pipeline input: False
Accept wildcard characters: False
```

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
Default value: 0
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

### -UserId
userId to filter on

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ICandidatesList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


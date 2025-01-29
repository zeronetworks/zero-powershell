---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znoutboundotrulesdestinationcandidate
schema: 2.0.0
---

# Get-ZNOutboundOtRulesDestinationCandidate

## SYNOPSIS
Returns a list of destination candidates for Outbound rules.

## SYNTAX

```
Get-ZNOutboundOtRulesDestinationCandidate [-AccountName <String>] [-Limit <Int32>] [-Offset <Int32>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of destination candidates for Outbound rules.

## EXAMPLES

### Example 1: Get destination candidates for an OT outbound Rule
```powershell
(Get-ZNOutboundOtRulesDestinationCandidate).Items
```

```output
Id           Name                                      Domain
--           ----                                      ------
b:114002     Segmented OT/IoT devices                  
g:o:1Lda83cd 3D Printer                                OT/IoT
g:a:5C0h1yd5 Access Control Assistance Operators       posh.local
g:o:1Kda83cd Access control devices                    OT/IoT
g:o:1Mda83cd Access control gateway                    OT/IoT
g:a:HJWKrlHo Account Operators                         posh.local
g:a:HBWuhIUi Administrators                            posh.local
g:a:9vY3VFbm Allowed RODC Password Replication Group   posh.local
g:s:18da83cd Any asset except segmented OT/IoT devices system
g:s:28da83cd Any except trusted Internet               system
g:o:1Nda83cd ATM                                       OT/IoT
```

This cmdlet lists destination candidates for OT outbound rule.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ICandidatesList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


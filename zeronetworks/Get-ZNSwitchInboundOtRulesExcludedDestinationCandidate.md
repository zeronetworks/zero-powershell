---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znswitchinboundotrulesexcludeddestinationcandidate
schema: 2.0.0
---

# Get-ZNSwitchInboundOtRulesExcludedDestinationCandidate

## SYNOPSIS
Returns a list of excluded destination candidates for OT/IoT Inbound rules.

## SYNTAX

```
Get-ZNSwitchInboundOtRulesExcludedDestinationCandidate -SwitchId <String> [-AccountName <String>]
 [-Cursor <Int64>] [-Limit <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of excluded destination candidates for OT/IoT Inbound rules.

## EXAMPLES

### Example 1: List excluded destination candidates for inbound OT rule
```powershell
(Get-ZNSwitchInboundOtRulesExcludedDestinationCandidate -SwitchId w:c:IBlczUkw).Items
```

```output
Id           Name                                      Domain
--           ----                                      ------
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

This cmdlet list excluded destination candidates for an inbound OT rule.

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

### -Cursor
cursor position to start at

```yaml
Type: System.Int64
Parameter Sets: (All)
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
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 10
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

### -SwitchId
switch to delete

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


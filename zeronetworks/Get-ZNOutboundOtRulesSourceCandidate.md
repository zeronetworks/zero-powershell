---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znoutboundotrulessourcecandidate
schema: 2.0.0
---

# Get-ZNOutboundOtRulesSourceCandidate

## SYNOPSIS
Returns a list of source candidates for Outbound rules.

## SYNTAX

```
Get-ZNOutboundOtRulesSourceCandidate [-AccountName <String>] [-Cursor <Int64>] [-Limit <Int32>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of source candidates for Outbound rules.

## EXAMPLES

### Example 1: Get source candidates for an OT outbound Rule
```powershell
(Get-ZNOutboundOtRulesSourceCandidate).Items
```

```output
Id           Name             Domain
--           ----             ------
b:110001     Any asset        
g:s:14da83cd Internal subnets system
a:l:Wayc34Bu cs01             
a:a:JF2xro6g DC01             posh.local
a:a:wmw7t9vI FS01             posh.local
a:a:e7XtRE2C FS02             posh.local
a:a:EzbcAdb7 LA01             posh.local
a:l:fyf7WzCt ml01             
a:a:yhPm6ByM SS01             posh.local
a:d:y5C7sd61 wc01             Entra ID (Azure AD)
a:a:o8w4Bpq7 WC01             posh.local
```

This cmdlet lists source candidates for OT outbound rule.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ICandidatesList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


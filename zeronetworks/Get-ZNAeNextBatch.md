---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znaenextbatch
schema: 2.0.0
---

# Get-ZNAeNextBatch

## SYNOPSIS
Returns a date in epoch(ms) for the next batch of AE rules.

## SYNTAX

```
Get-ZNAeNextBatch [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a date in epoch(ms) for the next batch of AE rules.

## EXAMPLES

### Example 1: Get AE next rules batch
```powershell
Get-ZNAeNextBatch
```

```output
IdentityAssets     NetworkIt           Rpc
--------------     ---------           ---
 1754006399000 1754006399000 1754006399000
```

This cmdlet gets the AE next rules batch times.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.INextBatch

## NOTES

## RELATED LINKS


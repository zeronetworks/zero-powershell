---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/invoke-znencodeentityiprange
schema: 2.0.0
---

# Invoke-ZNEncodeEntityIPRange

## SYNOPSIS
Returns the assetId after encoding the IP range.

## SYNTAX

```
Invoke-ZNEncodeEntityIPRange -IPRange <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns the assetId after encoding the IP range.

## EXAMPLES

### Example 1: Encode an IP Address range
```powershell
Invoke-ZNEncodeEntityIPRange -IPRange 1.1.1.1-1.1.1.2 
```

```output
b:120101010120b:140101010101010102
```

This cmdlet encodes an IP Address range to ZNSegement entityId for use in rules and policies.

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

### -IPRange
IP Address Range

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IEncodedEntity

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


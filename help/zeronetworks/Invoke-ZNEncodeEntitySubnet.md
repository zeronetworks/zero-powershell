---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/invoke-znencodeentitysubnet
schema: 2.0.0
---

# Invoke-ZNEncodeEntitySubnet

## SYNOPSIS
Returns the assetId after encoding the IP subnet.

## SYNTAX

```
Invoke-ZNEncodeEntitySubnet -Subnet <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns the assetId after encoding the IP subnet.

## EXAMPLES

### Example 1: Encode an IP subnet range
```powershell
Invoke-ZNEncodeEntitySubnet -Subnet 1.1.1.0/24 
```

```output
b:120101010018
```

This cmdlet encodes an IP subnet to ZNSegement entityId for use in rules and policies.

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

### -Subnet
IP Subnet

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


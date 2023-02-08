---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/search-znasset
schema: 2.0.0
---

# Search-ZNAsset

## SYNOPSIS
Returns an assetId.

## SYNTAX

```
Search-ZNAsset [-Fqdn <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns an assetId.

## EXAMPLES

### Example 1: Find an asset by FQDN
```powershell
Search-ZNAsset -Fqdn dc1.zero.labs
```

```output
a:a:ZgBWOMyc
```

This cmdlet will search the assets using FQDN to return the assetId.

## PARAMETERS

### -Fqdn
fully qualifed domain name

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

### System.String

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS


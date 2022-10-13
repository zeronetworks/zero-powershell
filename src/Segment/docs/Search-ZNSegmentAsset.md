---
external help file:
Module Name: ZN.Segment
online version: https://test.comzn.segment/search-znsegmentasset
schema: 2.0.0
---

# Search-ZNSegmentAsset

## SYNOPSIS
Asset by FQDN

## SYNTAX

```
Search-ZNSegmentAsset [-Fqdn <String>] [<CommonParameters>]
```

## DESCRIPTION
Asset by FQDN

## EXAMPLES

### Example 1: Find an asset by FQDN
```powershell
Search-ZNSegmentAsset -Fqdn dc1.zero.labs
```

```output
a:a:ZgBWOMyc
```

This cmdlet will search the assets using FQDN to return the assetId.

## PARAMETERS

### -Fqdn
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

### System.String

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

## NOTES

ALIASES

## RELATED LINKS


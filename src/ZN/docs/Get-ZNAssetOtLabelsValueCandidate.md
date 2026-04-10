---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znassetotlabelsvaluecandidate
schema: 2.0.0
---

# Get-ZNAssetOtLabelsValueCandidate

## SYNOPSIS
Returns a list of value candidates for asset labels

## SYNTAX

```
Get-ZNAssetOtLabelsValueCandidate -AssetId <String> -Key <String> [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of value candidates for asset labels

## EXAMPLES

### Example 1: Get candidates for Label keys
```powershell
$asset = Search-ZNAsset -Fqdn poshotv1.posh.local
Get-ZNAssetLabelsKeyCandidate -AssetId $asset.AssetId
Get-ZNAssetLabelsValueCandidate -AssetId $asset.AssetId -Key Label
```

```output
Id       Name
--       ----
NewValue NewValue
```

This cmdlet lists values candidates for a labels key.

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

### -AssetId
assetId to filter on

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

### -Key
key for key-value pair filtering

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ILabelsValueCandidatesList

## NOTES

## RELATED LINKS


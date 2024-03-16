---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetsidentitysegmented
schema: 2.0.0
---

# Get-ZNAssetsIdentitySegmented

## SYNOPSIS
Returns a list of assets that are identity segmentated.

## SYNTAX

```
Get-ZNAssetsIdentitySegmented [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-Order <String>]
 [-OrderColumns <String>] [-WithCount] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of assets that are identity segmentated.

## EXAMPLES

### Example 1: List identity segmented assets
```powershell
(Get-ZNAssetsIdentitySegmented).ITems
```

```output
Id           Fqdn            IPV4Addresses IPV6Addresses               Source AssetStatus ProtectionState
--           ----            ------------- -------------               ------ ----------- ---------------
a:a:8ErCHXe8 DC01.posh.local {10.1.0.5}    {fe80::dd2c:f725:b57e:a4b1} 3      2           1
```

This cmdlet lists identity segmented assets.

## PARAMETERS

### -Filters
JSON string URI encoded set of fiters

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
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Order
What order to sort the results

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

### -OrderColumns
what column to order on

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

### -WithCount
return count of objects

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: $true
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


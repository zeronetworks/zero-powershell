---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetsrpcmonitored
schema: 2.0.0
---

# Get-ZNAssetsRpcMonitored

## SYNOPSIS
Returns a list of assets that are RPC monitored.

## SYNTAX

```
Get-ZNAssetsRpcMonitored [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-Order <String>]
 [-OrderColumns <String>] [-WithCount] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of assets that are RPC monitored.

## EXAMPLES

### Example 1: List RPC Monitored Assets
```powershell
(Get-ZNAssetsRpcMonitored).Items
```

```output
Id           Fqdn            IPV4Addresses IPV6Addresses              Source AssetStatus ProtectionState
--           ----            ------------- -------------              ------ ----------- ---------------
a:a:TeGEW52g dc01.posh.local {10.0.0.4}    {fe80::c60b:6dd:cd7a:2581} 3      2           1
```

This cmdlet lists RPC monitored assets.

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


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/test-znassetnetworksegment
schema: 2.0.0
---

# Test-ZNAssetNetworkSegment

## SYNOPSIS
Returns a number of assets that are valid for network segmentation.

## SYNTAX

### Validate1 (Default)
```
Test-ZNAssetNetworkSegment -AssetId <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Validate
```
Test-ZNAssetNetworkSegment -Body <IAssetsProtectBody> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### ValidateExpanded
```
Test-ZNAssetNetworkSegment -Items <String[]> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns a number of assets that are valid for network segmentation.

## EXAMPLES

### Example 1: Check if an asset is ready for network segmentation
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Test-ZNAssetNetworkSegment -AssetId $asset
```

```output
1
```

This cmdlet tests if an asset is ready for network segmentation.
1 is ready.

## PARAMETERS

### -AssetId
assetId to filter on

```yaml
Type: System.String
Parameter Sets: Validate1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
.
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsProtectBody
Parameter Sets: Validate
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Items
.

```yaml
Type: System.String[]
Parameter Sets: ValidateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsProtectBody

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IValidateResponse

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`BODY <IAssetsProtectBody>`: .
  - `Items <List<String>>`: 

## RELATED LINKS


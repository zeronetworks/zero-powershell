---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/test-znassetnetworksegmentprotect
schema: 2.0.0
---

# Test-ZNAssetNetworkSegmentProtect

## SYNOPSIS
Returns a number of assets that are valid for network segmentation.

## SYNTAX

### Validate (Default)
```
Test-ZNAssetNetworkSegmentProtect -AssetId <String> [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### ValidateExpanded
```
Test-ZNAssetNetworkSegmentProtect -Items <String[]> [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a number of assets that are valid for network segmentation.

## EXAMPLES

### Example 1: Validate asset for Network Segmentation
```powershell
$asset = Search-ZNAsset -fqdn dc01.posh.local
test-znAssetNetworkSegmentProtect -AssetId $asset.AssetId
```

```output
AffectedAssetsCount
-------------------
                  1
```

This cmdlet validates if an asset is suitable for network segmentation.

### Example 2: Validate assets for Network Segmentation
```powershell
test-znAssetNetworkySegmentProtect -Items @($asset.AssetId)
```

```output
AffectedAssetsCount
-------------------
                  1
```

This cmdlet validates if an assets is suitable for network segmentation.

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
Parameter Sets: Validate
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
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

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IValidateResponse

## NOTES

## RELATED LINKS


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/add-znassetrpcsegment
schema: 2.0.0
---

# Add-ZNAssetRpcSegment

## SYNOPSIS
Returns and empty object.

## SYNTAX

### AddExpanded (Default)
```
Add-ZNAssetRpcSegment -Items <String[]> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### AddExpanded1
```
Add-ZNAssetRpcSegment -AssetId <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns and empty object.

## EXAMPLES

### Example 1: Add assets to RPC Segmentation
```powershell
Add-ZNAssetRpcSegment -Items @('a:a:JZgxbNLi','a:d:9w92xWqF')
```

This cmdlet adds multiple assets to RPC segmentation.

### Example 1: Add an asset to RPC Segmentation
```powershell
Add-ZNAssetRpcSegment -AssetId 'a:a:JZgxbNLi'
```

This cmdlet adds an asset to RPC segmentation.

## PARAMETERS

### -AssetId
assetId to filter on

```yaml
Type: System.String
Parameter Sets: AddExpanded1
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
Parameter Sets: AddExpanded
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAny

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


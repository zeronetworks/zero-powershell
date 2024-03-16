---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/invoke-znassetdeactivatebreakglass
schema: 2.0.0
---

# Invoke-ZNAssetDeactivateBreakGlass

## SYNOPSIS
Returns and empty object.

## SYNTAX

### DeactivateExpanded (Default)
```
Invoke-ZNAssetDeactivateBreakGlass -Items <String[]> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### DeactivateExpanded1
```
Invoke-ZNAssetDeactivateBreakGlass -AssetId <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns and empty object.

## EXAMPLES

### Example 1: Disable break glass on several assets
```powershell
Invoke-ZNAssetDeactivateBreakGlass -Items @('a:a:JZgxbNLi','a:d:9w92xWqF')
```

This cmdlet disables cloud break glass on several assets.

### Example 2: Disable break glass on an asset
```powershell
Invoke-ZNAssetDeactivateBreakGlass -AssetId 'a:a:JZgxbNLi'
```

This cmdlet disables cloud break glass on an asset.

## PARAMETERS

### -AssetId
assetId to filter on

```yaml
Type: System.String
Parameter Sets: DeactivateExpanded1
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
Parameter Sets: DeactivateExpanded
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


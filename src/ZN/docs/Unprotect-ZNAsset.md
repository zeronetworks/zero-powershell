---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/unprotect-znasset
schema: 2.0.0
---

# Unprotect-ZNAsset

## SYNOPSIS
Returns an empty object.

## SYNTAX

### Unprotect1 (Default)
```
Unprotect-ZNAsset -AssetId <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### UnprotectExpanded
```
Unprotect-ZNAsset -Items <String[]> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns an empty object.

## EXAMPLES

### Example 1: Remove assets from protection.
```powershell
Unprotect-ZNAsset -Items @(Search-ZNAsset -Fqdn dc1.zero.labs)

```

This cmdlet will remove assets from segementation.
Items accepts a list of assetIds.

### Example 1: Remove an Asset from protection.
```powershell
Unprotect-ZNAsset -AssetId (Search-ZNAsset -Fqdn dc1.zero.labs)

```

This cmdlet will remove an asset from segementation.

## PARAMETERS

### -AssetId
assetId to filter on

```yaml
Type: System.String
Parameter Sets: Unprotect1
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
Parameter Sets: UnprotectExpanded
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


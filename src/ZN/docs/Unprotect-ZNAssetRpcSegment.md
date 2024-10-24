---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/unprotect-znassetrpcsegment
schema: 2.0.0
---

# Unprotect-ZNAssetRpcSegment

## SYNOPSIS
Returns and empty object.

## SYNTAX

### UnprotectExpanded (Default)
```
Unprotect-ZNAssetRpcSegment -AssetId <String> [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### UnprotectExpanded1
```
Unprotect-ZNAssetRpcSegment -Items <String[]> [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns and empty object.

## EXAMPLES

### Example 1: Removes assets from RPC Segmentation
```powershell
Unprotect-ZNAssetRpcSegment -Items @('a:a:JZgxbNLi','a:d:9w92xWqF')
```

This cmdlet removes multiple assets from RPC segmentation.

### Example 1: Remove an asset from RPC Segmentation
```powershell
Unprotect-ZNAssetRpcSegment -AssetId 'a:a:JZgxbNLi'
```

This cmdlet removes an asset from RPC segmentation.

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
Parameter Sets: UnprotectExpanded
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
Parameter Sets: UnprotectExpanded1
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


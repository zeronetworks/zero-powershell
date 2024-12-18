---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/protect-znassetrpcsegment
schema: 2.0.0
---

# Protect-ZNAssetRpcSegment

## SYNOPSIS
Returns and empty object.

## SYNTAX

### ProtectExpanded (Default)
```
Protect-ZNAssetRpcSegment -AssetId <String> [-AccountName <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### ProtectExpanded1
```
Protect-ZNAssetRpcSegment -Items <String[]> [-AccountName <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns and empty object.

## EXAMPLES

### Example 1: Add assets to RPC Segmentation
```powershell
Protect-ZNAssetRpcSegment -Items @('a:a:JZgxbNLi','a:d:9w92xWqF')
```

This cmdlet adds multiple assets to RPC segmentation.

### Example 1: Add an asset to RPC Segmentation
```powershell
Protect-ZNAssetRpcSegment -AssetId 'a:a:JZgxbNLi'
```

This cmdlet adds an asset to RPC segmentation.

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
Parameter Sets: ProtectExpanded
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
Parameter Sets: ProtectExpanded1
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


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/invoke-znassetotqueue
schema: 2.0.0
---

# Invoke-ZNAssetOtQueue

## SYNOPSIS
Add OT Asset to learning

## SYNTAX

```
Invoke-ZNAssetOtQueue -AssetId <String> -QueueDays <Int32> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Add OT Asset to learning

## EXAMPLES

### Example 1: Extend learning for an OT asset
```powershell
$asset = Search-ZNAsset -Fqdn ot1777
Invoke-ZNAssetOtExtendQueue -AssetId $asset -ExtendByDays 30
```

This cmdlet will extend learning for a specific OT asset.

## PARAMETERS

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

### -QueueDays
number of days

```yaml
Type: System.Int32
Parameter Sets: (All)
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

ALIASES

## RELATED LINKS


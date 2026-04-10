---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/add-znassetotlabel
schema: 2.0.0
---

# Add-ZNAssetOtLabel

## SYNOPSIS
Add one or more labels to an asset

## SYNTAX

```
Add-ZNAssetOtLabel -AssetId <String> [-AccountName <String>] [-Labels <IKeyValuePair[]>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Add one or more labels to an asset

## EXAMPLES

### Example 1: Add a label to an asset
```powershell
$asset = Search-ZNAsset -Fqdn poshotv1.posh.local
Add-ZNAssetLabel -AssetId $asset.AssetId -Labels @(@{"key"="Label";"value"="NewValue"})
```

```output
AffectedEntities
----------------
               1
```

This cmdlet adds a label to an asset.

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
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Labels
.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IKeyValuePair[]
Parameter Sets: (All)
Aliases:

Required: False
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ILabelsResponse

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`LABELS <IKeyValuePair[]>`: .
  - `[Key <String>]`: 
  - `[Value <String>]`: 

## RELATED LINKS


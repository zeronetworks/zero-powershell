---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/remove-znassetrpcmonitoring
schema: 2.0.0
---

# Remove-ZNAssetRpcMonitoring

## SYNOPSIS
Returns an empty object.

## SYNTAX

### Delete (Default)
```
Remove-ZNAssetRpcMonitoring -AssetId <String> [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### DeleteExpanded
```
Remove-ZNAssetRpcMonitoring -Items <String[]> [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns an empty object.

## EXAMPLES

### Example 1: Remove assets to RPC Monitoring
```powershell
Remove-ZNAssetRpcMonitoring -Items @('a:a:JZgxbNLi','a:d:9w92xWqF')
```

This cmdlet removes multiple assets to RPC monitoring.

### Example 1: Remove an asset to RPC Monitoring
```powershell
Remove-ZNAssetRpcMonitoring -AssetId 'a:a:JZgxbNLi'
```

This cmdlet removes an asset to RPC monitoring.

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
Parameter Sets: Delete
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
Parameter Sets: DeleteExpanded
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


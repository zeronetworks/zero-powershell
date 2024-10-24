---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/test-znassetnetworkunprotect
schema: 2.0.0
---

# Test-ZNAssetNetworkUnprotect

## SYNOPSIS
Returns a number of assets that are valid to unprotect.

## SYNTAX

### Validate (Default)
```
Test-ZNAssetNetworkUnprotect -AssetId <String> [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Validate1
```
Test-ZNAssetNetworkUnprotect -Body <IAssetsUnprotectBody> [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### ValidateExpanded
```
Test-ZNAssetNetworkUnprotect -Items <String[]> [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a number of assets that are valid to unprotect.

## EXAMPLES

### Example 1: Check if an asset is ready for removal from network segmentation
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Test-ZNAssetNetworkUnprotect -AssetId $asset
```

```output
1
```

This cmdlet tests if an asset is ready for removal from network segmentation.
1 is ready.

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

### -Body
.
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsUnprotectBody
Parameter Sets: Validate1
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsUnprotectBody

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IValidateResponse

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`BODY <IAssetsUnprotectBody>`: .
  - `Items <List<String>>`: 

## RELATED LINKS


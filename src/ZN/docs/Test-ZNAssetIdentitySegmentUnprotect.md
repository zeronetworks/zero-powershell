---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/test-znassetidentitysegmentunprotect
schema: 2.0.0
---

# Test-ZNAssetIdentitySegmentUnprotect

## SYNOPSIS
Returns a number of assets that are valid to unprotect.

## SYNTAX

### Validate (Default)
```
Test-ZNAssetIdentitySegmentUnprotect -AssetId <String> [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### ValidateExpanded
```
Test-ZNAssetIdentitySegmentUnprotect -Items <String[]> [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a number of assets that are valid to unprotect.

## EXAMPLES

### Example 1: Validate asset for Identity unsegmentation
```powershell
$asset = Search-ZNAsset -fqdn dc01.posh.local
test-znAssetIdentitySegmentUnprotect -AssetId $asset.AssetId
```

```output
AffectedAssetsCount
-------------------
                  1
```

This cmdlet validates if an asset is suitable for identity unsegmentation.

### Example 2: Validate assets for Identity unsegmentation
```powershell
test-znAssetIdentitySegmentUnprotect -Items @($asset.AssetId)
```

```output
AffectedAssetsCount
-------------------
                  1
```

This cmdlet validates if an assets is suitable for identity unsegmentation.

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


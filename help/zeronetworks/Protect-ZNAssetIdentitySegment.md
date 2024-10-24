---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/protect-znassetidentitysegment
schema: 2.0.0
---

# Protect-ZNAssetIdentitySegment

## SYNOPSIS
Returns and empty object.

## SYNTAX

### Protect (Default)
```
Protect-ZNAssetIdentitySegment -AssetId <String> [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### ProtectExpanded
```
Protect-ZNAssetIdentitySegment -Items <String[]> [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns and empty object.

## EXAMPLES

### Example 1: Add an asset to identity segmentation
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local                      
Protect-ZNAssetIdentitySegment -AssetId $asset
```

This cmdlet adds an asset to identity segmentation.

### Example 2: Add multiple assets to identity segmentation
```powershell
Protect-ZNAssetIdentitySegment -Items @("assetid","assetId")
```

This cmdlet adds multiple assets to identity segmentation.

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
Parameter Sets: Protect
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
Parameter Sets: ProtectExpanded
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


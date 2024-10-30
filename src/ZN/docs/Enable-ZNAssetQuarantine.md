---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/enable-znassetquarantine
schema: 2.0.0
---

# Enable-ZNAssetQuarantine

## SYNOPSIS
Returns an empty object.

## SYNTAX

### EnableExpanded (Default)
```
Enable-ZNAssetQuarantine -AssetId <String> -Quarantine [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### EnableExpanded1
```
Enable-ZNAssetQuarantine -AssetIds <String[]> -Quarantine [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns an empty object.

## EXAMPLES

### Example 1: Quarnatine an asset
```powershell
Enable-ZNAssetQuarantine -AssetId "a:d:FMVqm8jZ" -Quarantine
```

This cmdlet enables quarantine for an asset.

### Example 2: Disable quarantine for an asset
```powershell
Enable-ZNAssetQuarantine -AssetId "a:d:FMVqm8jZ" -Quarantine:$false
```

This cmdlet disables quarantine for an asset.

### Example 3: Quarnatine assets
```powershell
Enable-ZNAssetQuarantine -AssetIds @("a:d:FMVqm8jZ","a:l:4NMHdoaO") -Quarantine
```

This cmdlet enables quarantine for assets.

### Example 2: Disable quarantine for assets
```powershell
Enable-ZNAssetQuarantine -AssetIds @("a:d:FMVqm8jZ","a:l:4NMHdoaO") -Quarantine:$false
```

This cmdlet disables quarantine for assets.

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
Parameter Sets: EnableExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AssetIds
.

```yaml
Type: System.String[]
Parameter Sets: EnableExpanded1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Quarantine
Indicates whether to enable or disable quarantine

```yaml
Type: System.Management.Automation.SwitchParameter
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

## RELATED LINKS


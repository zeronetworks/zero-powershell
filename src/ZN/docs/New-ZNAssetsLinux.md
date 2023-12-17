---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/new-znassetslinux
schema: 2.0.0
---

# New-ZNAssetsLinux

## SYNOPSIS
Returns the assetId of the created Linux asset.

## SYNTAX

```
New-ZNAssetsLinux -DisplayName <String> -Fqdn <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns the assetId of the created Linux asset.

## EXAMPLES

### Example 1: Create a linux asset
```powershell
New-ZNAssetsLinux -DisplayName "linuxservera" -Fqdn "linuxservera.zero.labs"

```

This cmdlet will create a linux asset in the environment.

## PARAMETERS

### -DisplayName
.

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

### -Fqdn
.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetId

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


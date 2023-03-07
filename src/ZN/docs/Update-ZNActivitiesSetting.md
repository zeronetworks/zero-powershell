---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/update-znactivitiessetting
schema: 2.0.0
---

# Update-ZNActivitiesSetting

## SYNOPSIS
Update the Activities settings in Data Collection

## SYNTAX

```
Update-ZNActivitiesSetting -PrivateNetworksList <String[]> -ShouldFilterExternalTraffic [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Update the Activities settings in Data Collection

## EXAMPLES

### Example 1: Change Data Collection - Activities Settings
```powershell
Update-ZNActivitiesSetting -ShouldFilterExternalTraffic:$false
```

This cmdlet allows changing the Activities setting under data collection.

## PARAMETERS

### -PrivateNetworksList
Collection of IP subnets that are internal

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ShouldFilterExternalTraffic
Disable/Enable external traffic collection

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

ALIASES

## RELATED LINKS


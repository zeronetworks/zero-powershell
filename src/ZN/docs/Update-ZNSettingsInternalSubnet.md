---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/update-znsettingsinternalsubnet
schema: 2.0.0
---

# Update-ZNSettingsInternalSubnet

## SYNOPSIS
Update the Internal Subnets settings in System

## SYNTAX

```
Update-ZNSettingsInternalSubnet [-PrivateIpv4NetworksList <String[]>] [-PrivateIpv6NetworksList <String[]>]
 [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Update the Internal Subnets settings in System

## EXAMPLES

### Example 1: Update internal subnets
```powershell
Update-ZNSettingsInternalSubnet -PrivateNetworksList @("10.0.0.0/8","100.64.0.0/10","169.254.0.0/16","172.16.0.0/12","192.0.0.0/24","192.168.0.0/16","198.18.0.0/15","1.1.1.0/24")
```

This cmdlet updates the internal subnets setting under System.

## PARAMETERS

### -PassThru
Returns true when the command succeeds

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateIpv4NetworksList
Collection of IPv4 subnets that are internal

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateIpv6NetworksList
Collection of IPv4 subnets that are internal

```yaml
Type: System.String[]
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

## NOTES

## RELATED LINKS


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsinternalsubnet
schema: 2.0.0
---

# Get-ZNSettingsInternalSubnet

## SYNOPSIS
Get Internal Subnets settings in System

## SYNTAX

```
Get-ZNSettingsInternalSubnet [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Internal Subnets settings in System

## EXAMPLES

### Example 1: List internal subnet settings
```powershell
Get-ZNSettingsInternalSubnet
```

```output
10.0.0.0/8
100.64.0.0/10
169.254.0.0/16
172.16.0.0/12
192.0.0.0/24
192.168.0.0/16
198.18.0.0/15
```

This cmdlet lists the internal subnets Settings under System.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsInternalSubnets

## NOTES

## RELATED LINKS


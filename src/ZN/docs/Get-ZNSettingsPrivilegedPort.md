---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsprivilegedport
schema: 2.0.0
---

# Get-ZNSettingsPrivilegedPort

## SYNOPSIS
Get Privileged Ports settings in Network segmentation

## SYNTAX

```
Get-ZNSettingsPrivilegedPort [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Privileged Ports settings in Network segmentation

## EXAMPLES

### Example 1: Get privileged ports settings
```powershell
Get-ZNSettingsPrivilegedPort
```

```output
ItemTcpPorts                  ItemUdpPorts
------------                  ------------
21-23,445,3389,5985-5986,9389 
```

This cmdlet returns the privileged ports settings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsPrivilegedPorts

## NOTES

## RELATED LINKS


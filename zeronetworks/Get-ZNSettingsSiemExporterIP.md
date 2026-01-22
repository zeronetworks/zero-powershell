---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingssiemexporterip
schema: 2.0.0
---

# Get-ZNSettingsSiemExporterIP

## SYNOPSIS
Get SIEM Exporter IP Configuration

## SYNTAX

```
Get-ZNSettingsSiemExporterIP [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get SIEM Exporter IP Configuration

## EXAMPLES

### Example 1: Get Exporter IP
```powershell
Get-ZNSettingsSiemExporterIP
```

```output
ExporterIP
----------
34.23.121.192
```

This cmdlet gets the SIEM exporter IP.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsEventsReceiverExportIP

## NOTES

## RELATED LINKS


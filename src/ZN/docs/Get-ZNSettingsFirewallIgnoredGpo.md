---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsfirewallignoredgpo
schema: 2.0.0
---

# Get-ZNSettingsFirewallIgnoredGpo

## SYNOPSIS
Returns the properties of ignored GPO rules Firewall settings.

## SYNTAX

```
Get-ZNSettingsFirewallIgnoredGpo [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of ignored GPO rules Firewall settings.

## EXAMPLES

### Example 1: Get Asset health - Windows firewall GPO rule checkup exclusions settings
```powershell
Get-ZNSettingsFirewallIgnoredGpo
```

```output
InboundList OutboundList
----------- ------------
{test}      {}
```

This cmdlet returns the Asset health - Windows firewall GPO rule checkup exclusions settings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsFirewallIgnoredGpo

## NOTES

## RELATED LINKS


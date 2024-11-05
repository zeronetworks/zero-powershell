---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsfirewallignoredrule
schema: 2.0.0
---

# Get-ZNSettingsFirewallIgnoredRule

## SYNOPSIS
Returns the properties of ignored rules for anti-tampering Firewall settings.

## SYNTAX

```
Get-ZNSettingsFirewallIgnoredRule [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of ignored rules for anti-tampering Firewall settings.

## EXAMPLES

### Example 1: Get Anti-tampering - Windows firewall rule exclusions settings
```powershell
Get-ZNSettingsFirewallIgnoredRule
```

```output
InboundList OutboundList
----------- ------------
{test}      {}
```

This cmdlet returns the Anti-tampering - Windows firewall rule exclusions settings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsFirewallIgnoredRules

## NOTES

## RELATED LINKS


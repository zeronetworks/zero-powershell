---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/update-znsettingsfirewallignoredrule
schema: 2.0.0
---

# Update-ZNSettingsFirewallIgnoredRule

## SYNOPSIS
Returns he properties of ignored rules for anti-tampering Firewall settings.

## SYNTAX

```
Update-ZNSettingsFirewallIgnoredRule [-InboundList <String[]>] [-OutboundList <String[]>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns he properties of ignored rules for anti-tampering Firewall settings.

## EXAMPLES

### Example 1: Update ignored GPO rules for Anti-tampering
```powershell
$settingsignore = Get-ZNSettingsFirewallIgnoredRule
Update-ZNSettingsFirewallIgnoredRule -InboundList $settingsignore.InboundList -OutboundList @("newruletoignore")

InboundList OutboundList
----------- ------------
{test}      {newruletoignore}
```

This cmdlet updates the rules to ignore for Antitampering.

## PARAMETERS

### -InboundList
.

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

### -OutboundList
.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsFirewallIgnoredRules

## NOTES

## RELATED LINKS


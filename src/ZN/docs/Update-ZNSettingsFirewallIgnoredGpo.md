---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/update-znsettingsfirewallignoredgpo
schema: 2.0.0
---

# Update-ZNSettingsFirewallIgnoredGpo

## SYNOPSIS
Returns the properties of ignored GPO rules Firewall settings.

## SYNTAX

```
Update-ZNSettingsFirewallIgnoredGpo [-InboundList <String[]>] [-OutboundList <String[]>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of ignored GPO rules Firewall settings.

## EXAMPLES

### Example 1: Update ignored GPO rules for Asset Health
```powershell
$settingsgpo = Get-ZNSettingsFirewallIgnoredGpo
Update-ZNSettingsFirewallIgnoredGpo -InboundList $settingsgpo.InboundList -OutboundList @("newruletoignore")
```

```output
InboundList OutboundList
----------- ------------
{test}      {newruletoignore}
```

This cmdlet updates the GPO rules to ignore for Asset Health.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsFirewallIgnoredGpo

## NOTES

## RELATED LINKS


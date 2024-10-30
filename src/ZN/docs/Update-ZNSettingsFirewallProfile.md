---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/update-znsettingsfirewallprofile
schema: 2.0.0
---

# Update-ZNSettingsFirewallProfile

## SYNOPSIS
Returns the properties of firewall profiles in Firewall settings.

## SYNTAX

```
Update-ZNSettingsFirewallProfile [-AccountName <String>] [-InboundAllowDomain] [-InboundAllowPrivate]
 [-InboundAllowPublic] [-InboundBlockDomain] [-InboundBlockPrivate] [-InboundBlockPublic]
 [-OutboundBlockDomain] [-OutboundBlockPrivate] [-OutboundBlockPublic] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of firewall profiles in Firewall settings.

## EXAMPLES

### Example 1: Update Firewall profile settings
```powershell
$fwprofiles = Get-ZNSettingsFirewallProfile
Update-ZNSettingsFirewallProfile -InboundAllowDomain:$fwprofiles.InboundAllowDomain -InboundAllowPrivate:$fwprofiles.InboundAllowPrivate -InboundAllowPublic:$true -InboundBlockDomain:$fwprofiles.InboundBlockDomain -InboundBlockPrivate:$fwprofiles.InboundBlockPrivate -InboundBlockPublic:$fwprofiles.InboundBlockPublic -OutboundBlockDomain:$fwprofiles.OutboundBlockDomain -OutboundBlockPrivate:$fwprofiles.OutboundBlockPrivate -OutboundBlockPublic:$fwprofiles.OutboundBlockPublic 
```

```output
InboundAllowDomain   : True
InboundAllowPrivate  : True
InboundAllowPublic   : True
InboundBlockDomain   : True
InboundBlockPrivate  : True
InboundBlockPublic   : True
OutboundBlockDomain  : True
OutboundBlockPrivate : True
OutboundBlockPublic  : True
```

This cmdlet updates the Firewall profiles settings.

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

### -InboundAllowDomain
.

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

### -InboundAllowPrivate
.

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

### -InboundAllowPublic
.

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

### -InboundBlockDomain
.

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

### -InboundBlockPrivate
.

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

### -InboundBlockPublic
.

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

### -OutboundBlockDomain
.

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

### -OutboundBlockPrivate
.

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

### -OutboundBlockPublic
.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsFirewallProfiles

## NOTES

## RELATED LINKS


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/update-znnotificationsetting
schema: 2.0.0
---

# Update-ZNNotificationSetting

## SYNOPSIS
Returns the properties of the updated Mail Notifications settings.

## SYNTAX

```
Update-ZNNotificationSetting -AssetProtected -AssetQueued -AssetUnprotected [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of the updated Mail Notifications settings.

## EXAMPLES

### Example 1: Update mail notifications
```powershell
Update-ZNNotificationSetting -AssetProtected:$true -AssetQueued:$false -AssetUnprotected:$true
```

```output
AssetProtected AssetQueued AssetUnprotected
-------------- ----------- ----------------
True           False       True
```

This cmdlet updates the Mail notifications setting under System.

## PARAMETERS

### -AssetProtected
Notify asset added to protection

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

### -AssetQueued
Notify asset added to learning

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

### -AssetUnprotected
Notify asset removed from protection

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsNotification

## NOTES

ALIASES

## RELATED LINKS


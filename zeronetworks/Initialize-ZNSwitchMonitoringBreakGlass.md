---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/initialize-znswitchmonitoringbreakglass
schema: 2.0.0
---

# Initialize-ZNSwitchMonitoringBreakGlass

## SYNOPSIS
Returns and empty object.

## SYNTAX

### ActivateExpanded (Default)
```
Initialize-ZNSwitchMonitoringBreakGlass -SwitchId <String> -MonitoringBreakGlassEnabled
 [-AccountName <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### ActivateExpanded1
```
Initialize-ZNSwitchMonitoringBreakGlass -MonitoringBreakGlassEnabled -SwitchIds <String[]>
 [-AccountName <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns and empty object.

## EXAMPLES

### Example 1: Enable switch monitoring break glass
```powershell
Initialize-ZNSwitchMonitoringBreakGlass -SwitchId w:c:qSa2fOOn -MonitoringBreakGlassEnabled
```

This cmdlet enables monitoring break glass for a switch.

### Example 2: Disable switch monitoring break glass
```powershell
Initialize-ZNSwitchMonitoringBreakGlass -SwitchId w:c:qSa2fOOn -MonitoringBreakGlassEnabled:$false
```

This cmdlet disables monitoring break glass for a switch.

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

### -MonitoringBreakGlassEnabled
.

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

### -SwitchId
switch to delete

```yaml
Type: System.String
Parameter Sets: ActivateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SwitchIds
.

```yaml
Type: System.String[]
Parameter Sets: ActivateExpanded1
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAny

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


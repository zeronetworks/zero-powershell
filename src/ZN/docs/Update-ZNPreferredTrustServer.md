---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/update-znpreferredtrustserver
schema: 2.0.0
---

# Update-ZNPreferredTrustServer

## SYNOPSIS
Set preferred trust server

## SYNTAX

```
Update-ZNPreferredTrustServer -DepId <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Set preferred trust server

## EXAMPLES

### Example 1: Set preferred Trust server
```powershell
Update-ZNPreferredTrustServer -DepId b41212f2-8f17-4d2b-ad2c-d077fc74fc0d
```

```output

```

This cmdlet sets the preferred trust server under Segment.

## PARAMETERS

### -DepId
The deploymentId

```yaml
Type: System.String
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAny

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS


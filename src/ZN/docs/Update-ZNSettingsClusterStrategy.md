---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/update-znsettingsclusterstrategy
schema: 2.0.0
---

# Update-ZNSettingsClusterStrategy

## SYNOPSIS
Returns an empty response.

## SYNTAX

```
Update-ZNSettingsClusterStrategy [-AccountName <String>] [-PreferredDeploymentId <String>] [-Strategy <Int32>]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns an empty response.

## EXAMPLES

### Example 1: Update Segment server cluster strategy
```powershell
Update-ZNSettingsClusterStrategy -PreferredDeploymentId b41212f2-8f17-4d2b-ad2c-d077fc74fc0d
```

This cmdlet sets the preferred trust server under Segment servers.

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

### -PreferredDeploymentId
.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Strategy
.

```yaml
Type: System.Int32
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAny

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/remove-znaeexclusionsoutbound
schema: 2.0.0
---

# Remove-ZNAeExclusionsOutbound

## SYNOPSIS
Returns an empty object.

## SYNTAX

```
Remove-ZNAeExclusionsOutbound -RuleId <String> [-AccountName <String>] [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns an empty object.

## EXAMPLES

### Example 1: Delete an AE exclusion
```powershell
Remove-ZNAeExclusionsOutbound -RuleId 3a6f56a8-288f-4447-b8bc-9c63c4c8a58d
```

This cmdlet deletes an AE exclusion.

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

### -PassThru
Returns true when the command succeeds

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

### -RuleId
The id of the rule

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS

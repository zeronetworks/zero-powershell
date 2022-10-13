---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/remove-znsegmentoutboundblockrule
schema: 2.0.0
---

# Remove-ZNSegmentOutboundBlockRule

## SYNOPSIS
Remove outbound block rule

## SYNTAX

```
Remove-ZNSegmentOutboundBlockRule -RuleId <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Remove outbound block rule

## EXAMPLES

### Example 1: Remove an outbound block rule
```powershell
$rule = Get-ZNSegmentOutboundBlockRule | where {$_.Description -eq "Test Rule"}
Remove-ZNSegmentOutboundBlockRule -RuleId $rule.Id
```

This cmdlet deletes an outbound block rule from the environment.

## PARAMETERS

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

### System.String

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAny

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

## NOTES

ALIASES

## RELATED LINKS


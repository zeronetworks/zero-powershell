---
external help file:
Module Name: ZN.Segment
online version: https://test.comzn.segment/remove-znsegmentcustomgroup
schema: 2.0.0
---

# Remove-ZNSegmentCustomGroup

## SYNOPSIS
Groups

## SYNTAX

```
Remove-ZNSegmentCustomGroup -GroupId <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Groups

## EXAMPLES

### Example 1: Delete a custom group
```powershell
Remove-ZNSegmentCustomGroup -GroupId "g:c:h8I6V0TB"
```

This cmdlet will delete a custom group from the environment.

## PARAMETERS

### -GroupId
custom group id

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


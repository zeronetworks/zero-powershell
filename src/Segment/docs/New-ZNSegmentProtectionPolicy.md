---
external help file:
Module Name: ZN.Segment
online version: https://test.comzn.segment/new-znsegmentprotectionpolicy
schema: 2.0.0
---

# New-ZNSegmentProtectionPolicy

## SYNOPSIS
Add protection policy

## SYNTAX

```
New-ZNSegmentProtectionPolicy -GroupId <String> -InitialQueueDays <Int32> -MinQueueDays <Int32>
 [-Description <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Add protection policy

## EXAMPLES

### Example 1: Create a protection policy
```powershell
# There are multiple groups with Domain Controllers in the name
$group = Get-ZNSegmentADGroup -Search "Domain Controllers" | where {$_.Name -eq "Domain Controllers"}
New-ZNSegmentProtectionPolicy -GroupId $group.Id -MinQueueDays 30 -InitialQueueDays 30
```

This cmdlet will create a new protection policy in the environment.
In the above example, AD contains multiple groups with Domain Controllers in the name, PowerShell filtering can easily be used inline.

## PARAMETERS

### -Description
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

### -GroupId
.

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

### -InitialQueueDays
.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinQueueDays
.

```yaml
Type: System.Int32
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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IProtectionPolicy

## NOTES

ALIASES

## RELATED LINKS


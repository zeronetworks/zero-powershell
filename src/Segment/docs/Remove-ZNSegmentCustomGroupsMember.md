---
external help file:
Module Name: ZN.Segment
online version: https://test.comzn.segment/remove-znsegmentcustomgroupsmember
schema: 2.0.0
---

# Remove-ZNSegmentCustomGroupsMember

## SYNOPSIS
Groups

## SYNTAX

### DeleteExpanded (Default)
```
Remove-ZNSegmentCustomGroupsMember -GroupId <String> -MembersId <String[]> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Delete
```
Remove-ZNSegmentCustomGroupsMember -GroupId <String> -Body <ICustomGroupMembersBody> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Groups

## EXAMPLES

### Example 1: Remove a member of a custom group
```powershell
Remove-ZNSegmentCustomGroupsMember -GroupId "g:c:gP9POclU" -MembersId "a:a:GnyWAsYs"
```

This cmdlet removes a member from a custom group.

## PARAMETERS

### -Body
.
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Segment.Models.ICustomGroupMembersBody
Parameter Sets: Delete
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -GroupId
members id

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

### -MembersId
members id

```yaml
Type: System.String[]
Parameter Sets: DeleteExpanded
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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.ICustomGroupMembersBody

## OUTPUTS

### System.String

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAny

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`BODY <ICustomGroupMembersBody>`: .
  - `MembersId <String[]>`: members id

## RELATED LINKS


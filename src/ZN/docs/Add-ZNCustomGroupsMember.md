---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/add-zncustomgroupsmember
schema: 2.0.0
---

# Add-ZNCustomGroupsMember

## SYNOPSIS
Returns an empty object.

## SYNTAX

```
Add-ZNCustomGroupsMember -GroupId <String> -MembersId <String[]> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns an empty object.

## EXAMPLES

### Example 1: Add a member to a custom group
```powershell
$cgroup = Get-ZNCustomGroup | where {$_.Name -eq "Custom Group"}
Add-ZNCustomGroupsMember -GroupId $cgroup.Id -MembersId (Search-ZNAsset -Fqdn dc.zero.labs)
```

This cmdlet adds a member to the custom group in the environment.

## PARAMETERS

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


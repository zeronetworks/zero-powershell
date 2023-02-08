---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/get-zncustomgroup
schema: 2.0.0
---

# Get-ZNCustomGroup

## SYNOPSIS
Returns a list of Custom groups.

## SYNTAX

```
Get-ZNCustomGroup [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of Custom groups.

## EXAMPLES

### Example 1: List Custom Groups
```powershell
Get-ZNCustomGroup
```

```output
CreatedAt     Description        DirectMembersCount Domain Guid                                 HasProtectionPolicy Id           Name         Role Sid UpdatedAt
---------     -----------        ------------------ ------ ----                                 ------------------- --           ----         ---- --- ---------
1665444139901 Test servers group 1                  custom 68468022-0294-4c48-9e76-3074a14c22f5 False               g:c:gP9POclU Test Servers 3        1665444139901
```

This cmdlet will list custom groups for the environment.

### Example 2: Get the next page of custom groups
```powershell
Get-ZNCustomGroup -offset 10
```

Use offset to get the next page of custom groups.

## PARAMETERS

### -Filters
JSON string URI encoded set of fiters

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

### -Limit
Limit the return results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Offset
Used to page through results

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

### -Search
Test to search for

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IGroup

## NOTES

ALIASES

## RELATED LINKS


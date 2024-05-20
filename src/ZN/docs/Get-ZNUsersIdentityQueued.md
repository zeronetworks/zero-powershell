---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znusersidentityqueued
schema: 2.0.0
---

# Get-ZNUsersIdentityQueued

## SYNOPSIS
Returns a list of users in Learning.

## SYNTAX

```
Get-ZNUsersIdentityQueued [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-Order <String>]
 [-OrderColumns <String>] [-Search <String>] [-WithCount] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of users in Learning.

## EXAMPLES

### Example 1: List users in learning
```powershell
Get-ZNUsersIdentityQueued
```

```output
Id           Name               Email Phone JobTitle LastLogon
--           ----               ----- ----- -------- ---------
u:a:V61t0gZB ZNRemoteManagement                      1699819368941
```

This cmdlet lists the users in learning.

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

### -Order
What order to sort the results

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

### -OrderColumns
what column to order on

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

### -WithCount
return count of objects

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: $true
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISearchUsersResponse

## NOTES

## RELATED LINKS


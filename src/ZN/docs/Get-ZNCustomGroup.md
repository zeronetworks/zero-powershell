---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-zncustomgroup
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
1665690993630 test               1                  custom 333e66cb-d28e-40a2-ad55-d7a0288641fb False               g:c:7laiUyLK Renamed      3        1665761503450
1665694437608 test               1                  custom ab5fd074-7647-4040-be2e-b59491b813b7 False               g:c:Cr9U2U0z test2        3        1675886055136
1665748671276 test custom group  1                  custom 40a3d756-15f8-4b3b-b179-0475681e1587 False               g:c:VxKYVhvq test3        3        1665748671276
1665444139901 Test servers group 1                  custom 68468022-0294-4c48-9e76-3074a14c22f5 False               g:c:gP9POclU Test Servers 3        1665609451891
```

This cmdlet will list custom groups for the environment.

### Example 2: Get the next page of custom groups
```powershell
Get-ZNCustomGroup -offset 10
```

Use offset to get the next page of custom groups.

### Example 3: Find a custom group
```powershell
Get-ZNCustomGroup -Search Test
```

CreatedAt     Description        DirectMembersCount Domain Guid                                 HasProtectionPolicy Id           Name
---------     -----------        ------------------ ------ ----                                 ------------------- --           ---- 
1665444139901 Test servers group 1                  custom 68468022-0294-4c48-9e76-3074a14c22f5 False               g:c:gP9POclU Test…
```output

Use the search parameter to search by Name property.

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


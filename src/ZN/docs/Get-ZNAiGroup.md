---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znaigroup
schema: 2.0.0
---

# Get-ZNAiGroup

## SYNOPSIS
Returns a list of Ai Groups.

## SYNTAX

```
Get-ZNAiGroup [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of Ai Groups.

## EXAMPLES

### Example 1: List AI Groups
```powershell
 Get-ZNAiGroup

Id           Name Description DirectMembersCount
--           ---- ----------- ------------------
g:i:gFMSN4Mu LS   LS Servers  1
```

This cmdlet lists AI groups.

### Example 2: Search for an AI group
```powershell
Get-ZNAiGroup -Search LS

Id           Name Description DirectMembersCount
--           ---- ----------- ------------------
g:i:gFMSN4Mu LS   LS Servers  1
```

This cmdlet can also search by name.

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


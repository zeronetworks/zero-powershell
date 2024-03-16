---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-zngroupsbytype
schema: 2.0.0
---

# Get-ZNGroupsByType

## SYNOPSIS
Returns a list of groups.

## SYNTAX

```
Get-ZNGroupsByType -GroupType <String> [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>]
 [-Search <String>] [-WithCount] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of groups.

## EXAMPLES

### Example 1: List Groups by type
```powershell
Get-ZNGroupsByType -GroupType AD
```

```output
Id           Name                                    Description DirectMembersCount
--           ----                                    ----------- ------------------
g:a:qu04AfTz Access Control Assistance Operators                 0
g:a:XDRxcVDz Account Operators                                   0
g:a:MBAj0Xfx Administrators                                      4
g:a:u6xPbBLg Allowed RODC Password Replication Group             0
g:a:JjhBvgRW Backup Operators                                    0
g:a:j4oCHNuP Certificate Service DCOM Access                     0
g:a:YeUXSDi6 Cert Publishers                                     0
g:a:5uhxEQPp Cloneable Domain Controllers                        0
g:a:lPQyszKw Cryptographic Operators                             0
g:a:Ymj7i8np Denied RODC Password Replication Group              8
```

This cmdlet lists groups by type.

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

### -GroupType
group type to filter on

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IGroupsList

## NOTES

## RELATED LINKS


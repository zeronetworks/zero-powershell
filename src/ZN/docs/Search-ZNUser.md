---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/search-znuser
schema: 2.0.0
---

# Search-ZNUser

## SYNOPSIS
Provided user SID - returns user entity id

## SYNTAX

### Search (Default)
```
Search-ZNUser -Sid <String> [<CommonParameters>]
```

### Search1
```
Search-ZNUser -PrincipalName <String> [<CommonParameters>]
```

## DESCRIPTION
Provided user SID - returns user entity id

## EXAMPLES

### Example 1: Search for a user by prinicpal name
```powershell
Search-ZNUser -PrincipalName "posh\nicholas"

u:a:w27loY5p
```

This cmdlet lets you find a user by principal name.

### Example 2: Search for a user by SID
```powershell
Search-ZNUser -Sid "S-1-5-21-897785097-3420057113-2083682306-3601"

u:a:w27loY5p
```

This cmdlet lets you find a user by principal name.

## PARAMETERS

### -PrincipalName
sid to query for

```yaml
Type: System.String
Parameter Sets: Search1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Sid
sid to query for

```yaml
Type: System.String
Parameter Sets: Search
Aliases:

Required: True
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/search-znuser
schema: 2.0.0
---

# Search-ZNUser

## SYNOPSIS
Provided user SID - returns user entity id

## SYNTAX

### Search (Default)
```
Search-ZNUser -PrincipalName <String> [-AccountName <String>] [<CommonParameters>]
```

### Search1
```
Search-ZNUser -Sid <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Provided user SID - returns user entity id

## EXAMPLES

### Example 1: Search user by SID
```powershell
Search-ZNUser -Sid "S-1-5-21-897785097-3420057113-2083682306-2101"
```

This cmdlet can search for a user by sid.

### Example 2: Search user by Principal Name
```powershell
Search-ZNUser -PrincipalName "posh\test"
```

This cmdlet can search for a user by principal name.

## PARAMETERS

### -AccountName
this value is per customer / partner

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Read-ZNJWTtoken $env:ZNApiKey).aud.split(".")[0]
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrincipalName
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

### -Sid
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IUserIdResponse

## NOTES

## RELATED LINKS


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znusersinactive
schema: 2.0.0
---

# Get-ZNUsersInactive

## SYNOPSIS
Returns a list of Users.
Pass the returned 'nextCursor' as the '_cursor' query param of the next request for batches, when the '_offset' param is not used.

## SYNTAX

```
Get-ZNUsersInactive [-AccountName <String>] [-Cursor <Int64>] [-Filters <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Order <String>] [-OrderColumns <String>] [-Search <String>] [-WithCount]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of Users.
Pass the returned 'nextCursor' as the '_cursor' query param of the next request for batches, when the '_offset' param is not used.

## EXAMPLES

### Example 1: List inactive users
```powershell
(Get-ZNUsersInactive).Items
```

```output
AddedAt             : 
AddedBy             : 
ClassifiedById      : 1f352ed0-86f1-454f-90a5-592c197c8000
ClassifiedByName    : Zero Networks
CreatedAt           : 1702251607249
DistinguishedName   : CN=zSvcAcct3,CN=Users,DC=posh,DC=local
Domain              : posh.local
Email               : 
FirstName           : 
Guid                : 13bcfd10-6848-441f-85da-b7a548d68cf8
Id                  : u:a:Hk7V9Fp7
JobTitle            : 
LastLogonReplicated : 
LastName            : 
Name                : zSvcAcct3 (inactive)
OfficePhone         : 
Phone               : 
PrincipalName       : POSH\zSvcAcct3
ProtectAt           : 
ProtectedAt         : 
ProtectionState     : 1
Role                : 3
Sid                 : S-1-5-21-4035814016-3211323426-385196088-1111
Source              : 3
UserPrincipleName   : 
UserType            : 3
```

This cmdlet will list the inactive users.

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

### -Cursor
cursor position to start at

```yaml
Type: System.Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Filters
JSON string URI encoded set of filters

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
Default value: 0
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


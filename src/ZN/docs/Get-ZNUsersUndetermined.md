---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znusersundetermined
schema: 2.0.0
---

# Get-ZNUsersUndetermined

## SYNOPSIS
Returns a list of Undetermined Users.

## SYNTAX

```
Get-ZNUsersUndetermined [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of Undetermined Users.

## EXAMPLES

### Example 1: List undetermind Users
```powershell
Get-ZNUsersUndetermined

Id           Name               Email                              Phone JobTitle
--           ----               -----                              ----- --------
u:a:IiObBkVQ krbtgt                                                      
u:a:w27loY5p nicholas           nicholas+posh@zeronetworks.com           
u:a:Tolw5kf6 test                                                        
u:a:RVVXGo4w zero               nicholas+poshzero@zeronetworks.com       
u:a:r6ZkL5Y0 Guest                                                       
u:a:V61t0gZB ZNRemoteManagement                                          
u:a:X2inJbQY nicholasam         nicholas+posham@zeronetworks.com   
```

Thsi cmdlet lists undetermined users.

### Example 2: Search for a undetermind user
```powershell
Get-ZNUsersUndetermined -Search nicholas

Id           Name       Email                              Phone JobTitle
--           ----       -----                              ----- --------
u:a:RVVXGo4w zero       nicholas+poshzero@zeronetworks.com       
u:a:w27loY5p nicholas   nicholas+posh@zeronetworks.com           
u:a:X2inJbQY nicholasam nicholas+posham@zeronetworks.com    
```

This cmdlet can also search for undetermined users.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IUser

## NOTES

ALIASES

## RELATED LINKS


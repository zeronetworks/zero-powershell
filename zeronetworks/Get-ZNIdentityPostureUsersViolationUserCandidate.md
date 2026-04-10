---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znidentitypostureusersviolationusercandidate
schema: 2.0.0
---

# Get-ZNIdentityPostureUsersViolationUserCandidate

## SYNOPSIS
Returns a list of users candidates for Identity Posture users violation.

## SYNTAX

```
Get-ZNIdentityPostureUsersViolationUserCandidate [-AccountName <String>] [-Limit <Int32>] [-Offset <Int32>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of users candidates for Identity Posture users violation.

## EXAMPLES

### Example 1: List user candidates for ISPM violations
```powershell
(Get-ZNIdentityPostureUsersViolationUserCandidate).Items
```

```output
Domain                      : posh.local
Email                       : 
Guid                        : e45b0e81-3f2a-4529-af87-c77fedc49429
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:a:5C0h1yd5
Name                        : Access Control Assistance Operators
Sid                         : S-1-5-32-579
UserType                    : 

Domain                      : posh.local
Email                       : 
Guid                        : eb2f1e5b-efb4-4c72-ab26-1ffb0b370775
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:a:HJWKrlHo
Name                        : Account Operators
Sid                         : S-1-5-32-548
UserType                    : 

Domain                      : posh.local
Email                       : 
Guid                        : 3f831f70-8387-4052-86a1-35bfad5e4cd5
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:a:HBWuhIUi
Name                        : Administrators
Sid                         : S-1-5-32-544
UserType                    : 
```

This cmdlet lists user candidates for ISPM violations.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IGroupsOrUsersList

## NOTES

## RELATED LINKS


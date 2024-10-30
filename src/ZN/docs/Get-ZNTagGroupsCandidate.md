---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-zntaggroupscandidate
schema: 2.0.0
---

# Get-ZNTagGroupsCandidate

## SYNOPSIS
Returns a list of candidates for tag group membership.

## SYNTAX

```
Get-ZNTagGroupsCandidate [-AccountName <String>] [-GroupId <String>] [-Limit <Int32>] [-Offset <Int32>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of candidates for tag group membership.

## EXAMPLES

### Example 1: List candidates to add to a tag group
```powershell
(Get-ZNTagGroupsCandidate -GroupId g:t:01669ce2).Items
```

```output
CreatedAt           : 
Description         : 
DirectMembersCount  : 
Domain              : posh.local
Guid                : 
HasProtectionPolicy : 
Id                  : a:a:GLUxqjgc
Name                : wac01
PrincipalName       : 
Role                : 
Sid                 : 
UpdatedAt           : 

CreatedAt           : 
Description         : 
DirectMembersCount  : 
Domain              : posh.local
Guid                : 
HasProtectionPolicy : 
Id                  : a:a:P0GVm1iZ
Name                : fs01
PrincipalName       : 
Role                : 
Sid                 : 
UpdatedAt           : 

CreatedAt           : 
Description         : 
DirectMembersCount  : 
Domain              : posh.local
Guid                : 
HasProtectionPolicy : 
Id                  : a:a:ka62y0mc
Name                : fs02
PrincipalName       : 
Role                : 
Sid                 : 
UpdatedAt           : 

CreatedAt           : 
Description         : 
DirectMembersCount  : 
Domain              : posh.local
Guid                : 
HasProtectionPolicy : 
Id                  : a:a:sMnd5NkL
Name                : ts01
PrincipalName       : 
Role                : 
Sid                 : 
UpdatedAt           : 

CreatedAt           : 
Description         : 
DirectMembersCount  : 
Domain              : 
Guid                : 
HasProtectionPolicy : 
Id                  : a:n:u5LRZxRq
Name                : lm01
PrincipalName       : 
Role                : 
Sid                 : 
UpdatedAt           : 

CreatedAt           : 
Description         : 
DirectMembersCount  : 
Domain              : 
Guid                : 
HasProtectionPolicy : 
Id                  : a:n:3Odw9d40
Name                : as01
PrincipalName       : 
Role                : 
Sid                 : 
UpdatedAt           : 

CreatedAt           : 
Description         : 
DirectMembersCount  : 
Domain              : 
Guid                : 
HasProtectionPolicy : 
Id                  : a:l:qFxq3oOt
Name                : cs01
PrincipalName       : 
Role                : 
Sid                 : 
UpdatedAt           : 

CreatedAt           : 
Description         : 
DirectMembersCount  : 
Domain              : 
Guid                : 
HasProtectionPolicy : 
Id                  : a:l:wEGYa0Cp
Name                : ls01
PrincipalName       : 
Role                : 
Sid                 : 
UpdatedAt           : 

CreatedAt           : 
Description         : 
DirectMembersCount  : 
Domain              : AZURE_AD
Guid                : 
HasProtectionPolicy : 
Id                  : a:d:FMVqm8jZ
Name                : wc01
PrincipalName       : 
Role                : 
Sid                 : 
UpdatedAt           : 
```

This cmdlet list candidates to add to a tag group.

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

### -GroupId
groupId to filter on

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IGroupsList

## NOTES

## RELATED LINKS


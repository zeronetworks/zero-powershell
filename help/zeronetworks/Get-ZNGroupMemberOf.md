---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-zngroupmemberof
schema: 2.0.0
---

# Get-ZNGroupMemberOf

## SYNOPSIS
Returns a list of groups the group is a member of.

## SYNTAX

```
Get-ZNGroupMemberOf -GroupId <String> -GroupType <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of groups the group is a member of.

## EXAMPLES

### Example 1: Get a groups member of
```powershell
Get-ZNGroupMemberOf -GroupId g:c:gP9POclU
```

```output
CreatedAt     Description DirectMembersCount Domain Guid                                 HasProtectionPolicy Id           Name    Role
---------     ----------- ------------------ ------ ----                                 ------------------- --           ----    ----
1675962079610 test3       4                  custom 1ed72a4a-8777-4cb8-86bf-4479df0179cf False               g:c:DtglBTHi NewName 3  
```

This cmdlet gets the groups a group is a member of

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

Required: True
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAncestors

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


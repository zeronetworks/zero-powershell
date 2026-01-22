---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-zncustomgroupmember
schema: 2.0.0
---

# Get-ZNCustomGroupMember

## SYNOPSIS
Returns a list of all members

## SYNTAX

```
Get-ZNCustomGroupMember -GroupId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of all members

## EXAMPLES

### Example 1: List custom group members.
```powershell
Get-ZNCustomGroupMember -GroupId g:c:zV1tbs6t
```

```output
a:l:aZzoaFV9
g:o:1Lda83cd
```

This cmdlet list custom group memnbers.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IGroupMembersList

## NOTES

## RELATED LINKS


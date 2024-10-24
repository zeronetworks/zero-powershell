---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-zngroupmemberofgroupcandidate
schema: 2.0.0
---

# Get-ZNGroupMemberOfGroupCandidate

## SYNOPSIS
Returns a list of groups the asset can be a member of.

## SYNTAX

```
Get-ZNGroupMemberOfGroupCandidate -GroupId <String> -GroupType <String> [-AccountName <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of groups the asset can be a member of.

## EXAMPLES

### Example 1: List group candidates for adding a group to
```powershell
Get-ZNGroupMemberOfGroupCandidate -GroupId g:t:01669ce2 -GroupType tag
```

```output
Id           Name
--           ----
g:c:vcLDMdYI ProtectionPolicy
```

This cmdlet lists group candidates that a group can be added to.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IIdNamePairList

## NOTES

## RELATED LINKS


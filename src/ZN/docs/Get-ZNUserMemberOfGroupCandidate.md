---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znusermemberofgroupcandidate
schema: 2.0.0
---

# Get-ZNUserMemberOfGroupCandidate

## SYNOPSIS
Returns a list of groups the user can be a member of.

## SYNTAX

```
Get-ZNUserMemberOfGroupCandidate -UserId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of groups the user can be a member of.

## EXAMPLES

### Example 1: List group candidates for adding a user to
```powershell
Get-ZNUserMemberOfGroupCandidate -UserId u:d:2HOfhbpY
```

```output
Id           Name
--           ----
g:c:vcLDMdYI ProtectionPolicy
```

This cmdlet lists group candidates that a user can be added to.

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

### -UserId
userId to filter on

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


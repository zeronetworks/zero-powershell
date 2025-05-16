---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsadoucandidate
schema: 2.0.0
---

# Get-ZNSettingsAdouCandidate

## SYNOPSIS
Returns a list of OU candidates for an AD forest.

## SYNTAX

```
Get-ZNSettingsAdouCandidate -Domain <String> [-AccountName <String>] [-Offset <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of OU candidates for an AD forest.

## EXAMPLES

### Example 1: List candidates for AD OU configuration
```powershell
(Get-ZNSettingsAdouCandidate -Domain posh.local).Items
```

```output
Id           Name                                   Domain
--           ----                                   ------
g:u:f30cd874 OU=Domain Controllers,DC=posh,DC=local posh.local
g:u:72be985c OU=ZeroNetworks,DC=posh,DC=local       posh.local
```

This cmdlet lists candidates for AD OU configuration.

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

### -Domain
The domain to filter on

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISearchGroupsResponse

## NOTES

## RELATED LINKS


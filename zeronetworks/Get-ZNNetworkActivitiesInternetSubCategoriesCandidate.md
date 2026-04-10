---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znnetworkactivitiesinternetsubcategoriescandidate
schema: 2.0.0
---

# Get-ZNNetworkActivitiesInternetSubCategoriesCandidate

## SYNOPSIS
Returns a list of internet sub-categories that can be used as filters for network activities.

## SYNTAX

```
Get-ZNNetworkActivitiesInternetSubCategoriesCandidate [-AccountName <String>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of internet sub-categories that can be used as filters for network activities.

## EXAMPLES

### Example 1: List internet subcategories
```powershell
Get-ZNNetworkActivitiesInternetSubCategoriesCandidate
```

```output
Id                       Name
--                       ----
Productivity             Productivity
Generative AI Tools      Generative AI Tools
Software and Development Software and Development
```

This cmdlet lists internet subcategories for activities.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IIdNamePairList

## NOTES

## RELATED LINKS


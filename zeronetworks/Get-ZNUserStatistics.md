---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znuserstatistics
schema: 2.0.0
---

# Get-ZNUserStatistics

## SYNOPSIS
Get Users statistics

## SYNTAX

```
Get-ZNUserStatistics [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Users statistics

## EXAMPLES

### Example 1: List user statistics
```powershell
Get-ZNUserStatistics
```

```output
UserStatisticsAdminsCount UserStatisticsTotalCount UserStatisticsViewersCount
------------------------- ------------------------ --------------------------
                       13                       17                          0
```

This cmdlet lists the user statistics for the environment.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IUserStatistics

## NOTES

## RELATED LINKS


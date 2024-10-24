---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znuserexternalaccesspolicystatistics
schema: 2.0.0
---

# Get-ZNUserExternalAccessPolicyStatistics

## SYNOPSIS
Returns statistics for an external access policy.

## SYNTAX

```
Get-ZNUserExternalAccessPolicyStatistics -UserId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns statistics for an external access policy.

## EXAMPLES

### Example 1: Get external access policy statistics
```powershell
Get-ZNUserExternalAccessPolicyStatistics -UserId u:a:jRVryncp
```

```output
PoliciesStatisticsTotalCount
____________________________
1
```

This cmdlet gets the external access policy statistics.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IExternalAccessPolicyStatistics

## NOTES

## RELATED LINKS


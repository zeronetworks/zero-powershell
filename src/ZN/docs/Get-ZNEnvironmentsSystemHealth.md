---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znenvironmentssystemhealth
schema: 2.0.0
---

# Get-ZNEnvironmentsSystemHealth

## SYNOPSIS
Get system health

## SYNTAX

```
Get-ZNEnvironmentsSystemHealth [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get system health

## EXAMPLES

### Example 1: Get environment system health
```powershell
Get-ZNEnvironmentsSystemHealth
```

```output
Severity Type
-------- ----
critical deploymentOffline
```

This cmdlet lists any system health issues for the environment.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISystemHealthList

## NOTES

## RELATED LINKS


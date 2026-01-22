---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsdeploymentscluster
schema: 2.0.0
---

# Get-ZNSettingsDeploymentsCluster

## SYNOPSIS
Returns deployments Clusters.

## SYNTAX

```
Get-ZNSettingsDeploymentsCluster [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns deployments Clusters.

## EXAMPLES

### Example 1: List deployments clusters
```powershell
Get-ZNSettingsDeploymentsCluster
```

```output
Id           IsDefault Name                   NumOfAssets Strategy
--           --------- ----                   ----------- --------
C:d:00da83cd True      ZN deployments cluster 12          1
```

This cmdlet lists deployments clusters.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IDeploymentsClustersList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


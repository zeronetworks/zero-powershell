---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/update-znassetdeploymentscluster
schema: 2.0.0
---

# Update-ZNAssetDeploymentsCluster

## SYNOPSIS
Pin deployments cluster

## SYNTAX

```
Update-ZNAssetDeploymentsCluster -AssetIds <String[]> [-AccountName <String>] [-DeploymentsClusterId <String>]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Pin deployments cluster

## EXAMPLES

### Example 1: Pin assets to a deployment cluster
```powershell
Update-ZNAssetDeploymentsCluster -AssetIds @("a:n:c9PBr848") -DeploymentsClusterId C:d:00da83cd
```

This cmdlet pins assets to a deployment cluster.

### Example 2: unpin assets from a deployment cluster
```powershell
Update-ZNAssetDeploymentsCluster -AssetIds @("a:n:c9PBr848")
```

This cmdlet unpins assets from a a deployment cluster.

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

### -AssetIds
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeploymentsClusterId
.

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

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAny

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


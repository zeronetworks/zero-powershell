---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/update-znk8scluster
schema: 2.0.0
---

# Update-ZNK8SCluster

## SYNOPSIS
Returns a k8s cluster.

## SYNTAX

```
Update-ZNK8SCluster -K8SClusterId <String> -Name <String> [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a k8s cluster.

## EXAMPLES

### Example 1: Update K8s cluster
```powershell
Update-ZNK8SCluster -ClusterId k:c:FYe7yLUJ -Name "Openshift1"
```

```output
CreatedById           : 
CreatedByName         : 
ItemAgentExternalIP   : 50.89.54.67
ItemAgentVersion      : 1.0.0.0
ItemClusterType       : 2
ItemCniType           : 2
ItemCniVersion        : 4.17.12
ItemConnectedSince    : 1737941385944
ItemConnectionState   : 1
ItemCreatedAt         : 
ItemGeneration        : 0
ItemId                : k:c:FYe7yLUJ
ItemK8SClusterVersion : 1.30
ItemK8SUid            : e86eb57e-e632-4d0c-813a-9cf6c88cf5bc
ItemLastConnected     : 1737941385944
ItemLastDisconnected  : 
ItemName              : Openshift1
ItemUpdatedAt         : 1737989466866
UpdatedById           : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
UpdatedByName         : poshtesting
```

This cmdlet updates a K8s cluster.

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

### -K8SClusterId
cluserId to filter on

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

### -Name
.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IK8SItem

## NOTES

## RELATED LINKS


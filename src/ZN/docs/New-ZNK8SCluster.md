---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/new-znk8scluster
schema: 2.0.0
---

# New-ZNK8SCluster

## SYNOPSIS
Returns a list of k8s cluster.

## SYNTAX

```
New-ZNK8SCluster -Name <String> [-AccountName <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of k8s cluster.

## EXAMPLES

### Example 1: Create K8s cluster
```powershell
New-ZNK8SCluster -Name "test"
```

```output
CreatedById           : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
CreatedByName         : poshtesting
ItemAgentExternalIP   : 
ItemAgentVersion      : 
ItemClusterType       : 0
ItemCniType           : 0
ItemCniVersion        : 
ItemConnectedSince    : 
ItemConnectionState   : 4
ItemCreatedAt         : 1737995724974
ItemGeneration        : 0
ItemId                : k:c:TE6TnfGM
ItemK8SClusterVersion : 
ItemK8SUid            : 
ItemLastConnected     : 
ItemLastDisconnected  : 
ItemName              : test
ItemUpdatedAt         : 1737995724974
UpdatedById           : 
UpdatedByName         : 
```

This cmdlet creates a K8s clsuter.

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


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znk8sclustercommand
schema: 2.0.0
---

# Get-ZNK8SClusterCommand

## SYNOPSIS
Returns the commands for a K8s cluster.

## SYNTAX

```
Get-ZNK8SClusterCommand -K8SClusterId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns the commands for a K8s cluster.

## EXAMPLES

### Example 1: Get K8s cluster command
```powershell
Get-ZNK8SClusterCommand -ClusterId k:c:FYe7yLUJ
```

```output
InstallationCommand
-------------------                                                                                                             
helm upgrade --install znk8s-cloud-connector oci://us-docker.pkg.dev/zeronetworks-ci-cd/on-prem/znk8s-cloud-connector --version 0
```

This cmdlet gets the K8s cluster commands.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IK8SCommands

## NOTES

## RELATED LINKS


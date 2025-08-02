---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znk8snamespaceapplication
schema: 2.0.0
---

# Get-ZNK8SNamespaceApplication

## SYNOPSIS
Returns a list of applications for the K8s namespace.

## SYNTAX

```
Get-ZNK8SNamespaceApplication -K8SNamespaceId <String> [-AccountName <String>] [-Filters <String>]
 [-Limit <Int32>] [-Offset <Int32>] [-Order <String>] [-OrderColumns <String>] [-WithCount]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of applications for the K8s namespace.

## EXAMPLES

### Example 1: List K8s namespace applications
```powershell
$namepsace = (Get-ZNK8SClusterNamespace -K8SClusterId $cluster.id).Items[2]
(Get-ZNK8SNamespaceApplication -K8sNamespaceId $namespace.id).Items
```

```output
ClusterId   : k:c:FYe7yLUJ
ClusterName : 
Name        : csi-snapshot-controller
Namespaces  : {openshift-cluster-storage-operator}
Workloads   : {csi-snapshot-controller-5cf4c45688}

ClusterId   : k:c:FYe7yLUJ
ClusterName : 
Name        : csi-snapshot-controller-operator
Namespaces  : {openshift-cluster-storage-operator}
Workloads   : {csi-snapshot-controller-operator-6b59c57d84, csi-snapshot-controller-operator}

ClusterId   : k:c:FYe7yLUJ
ClusterName : 
Name        : csi-snapshot-webhook
Namespaces  : {openshift-cluster-storage-operator}
Workloads   : {csi-snapshot-webhook-c998ff56c, csi-snapshot-webhook-79fb6f8b56}
```

This cmdlet lists K8s namespace applications.

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

### -Filters
JSON string URI encoded set of filters

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

### -K8SNamespaceId
id of the K8s namespace

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

### -Limit
Limit the return results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 10
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

### -Order
What order to sort the results

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

### -OrderColumns
what column to order on

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

### -WithCount
return count of objects

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: $true
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IK8SApplicationsList

## NOTES

## RELATED LINKS


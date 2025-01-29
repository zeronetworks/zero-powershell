---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znk8sclusternamespaceoutboundnetworkpolicy
schema: 2.0.0
---

# Get-ZNK8SClusterNamespaceOutboundNetworkPolicy

## SYNOPSIS
Returns a list of network policies for a namespaces in the k8s cluster.

## SYNTAX

```
Get-ZNK8SClusterNamespaceOutboundNetworkPolicy -ClusterId <String> -NamespaceId <String>
 [-AccountName <String>] [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-Order <String>]
 [-OrderColumns <String>] [-WithCount] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of network policies for a namespaces in the k8s cluster.

## EXAMPLES

### Example 1: List outbound network policy
```powershell
(Get-ZNK8SClusterNamespaceOutboundNetworkPolicy -ClusterId k:c:FYe7yLUJ -NamespaceId k:n:Drq2fo6q).Items
```

```output
ClusterId       : k:c:FYe7yLUJ
EgressRules     : [{"to": [{"podSelector": {"matchLabels": {"k8s-app": "kube-dns"}}, "namespaceSelector": {"matchLabels": 
                  {"kubernetes.io/metadata.name": "kube-system"}}}], "ports": [{"port": 53, "protocol": "UDP"}, {"port": 53, 
                  "protocol": "TCP"}]}, {}]
Id              : k:f:8x0PM7MQ
IngressRules    : null
IsEgressPolicy  : True
IsIngressPolicy : True
K8SUid          : ca940fd3-a69e-43ef-adb0-0fc04a65cd2a
Name            : znk8s-cloud-connector
NamespaceId     : k:n:Drq2fo6q
NamespaceName   : znk8s
SelectorString  : {"matchLabels": {"app": "znk8s-cloud-connector"}}
```

This cmdlet lists the outbound Network policies for a namespace in a K8s cluster.

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

### -ClusterId
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

### -NamespaceId
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IK8SNetworkPolicyList

## NOTES

## RELATED LINKS


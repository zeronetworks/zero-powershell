---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znk8sclusteroutboundrule
schema: 2.0.0
---

# Get-ZNK8SClusterOutboundRule

## SYNOPSIS
Returns a list of rules in the k8s cluster.

## SYNTAX

```
Get-ZNK8SClusterOutboundRule -K8SClusterId <String> [-AccountName <String>] [-Filters <String>]
 [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of rules in the k8s cluster.

## EXAMPLES

### Example 1: List K8s Cluster outbound rules
```powershell
$k8sCluster = (Get-ZNK8SCluster).Items[0]
(Get-ZNK8SClusterOutboundRule -K8SClusterId $k8sCluster.Id).Items
```

```output
Action                 : 1
ClusterId              : k:c:osyL1WCW
Direction              : 2
EnvironmentId          : ca90ac47-3e4a-4898-baba-a1640fda83cd
ExcludedCidrsList      : 
HostNamespaceId        : k:n:5yRNq3bA
HostNamespaceName      : znk8s
LocalEntityApplication : 
LocalEntityLabelsMap   : 
LocalEntitySubnet      : 
LocalEntityType        : 7
LocalSelectors         : {"matchLabels": {"app.kubernetes.io/name": "znk8s-cloud-connector", "app.kubernetes.io/instance": 
                         "znk8s-cloud-connector"}}
NamespaceId            : k:n:5yRNq3bA
NamespaceName          : znk8s
NetworkPolicyName      : znk8s-discovery
NetworkPolicyUid       : 70157e7b-ee26-4706-945d-2ef0c579078b
PortsList              : 
RemoteEntities         : {kube-system}
RemoteSelectors        : [{"namespaceSelector":{"matchLabels":{"kubernetes.io/metadata.name":"kube-system"}},"podSelector":{"matchLabels":
                         {"k8s-app":"kube-dns"}}}]

Action                 : 1
ClusterId              : k:c:osyL1WCW
Direction              : 2
EnvironmentId          : ca90ac47-3e4a-4898-baba-a1640fda83cd
ExcludedCidrsList      : 
HostNamespaceId        : k:n:5yRNq3bA
HostNamespaceName      : znk8s
LocalEntityApplication : 
LocalEntityLabelsMap   : 
LocalEntitySubnet      : 
LocalEntityType        : 7
LocalSelectors         : {"matchLabels": {"app.kubernetes.io/name": "znk8s-cloud-connector", "app.kubernetes.io/instance": 
                         "znk8s-cloud-connector"}}
NamespaceId            : k:n:5yRNq3bA
NamespaceName          : znk8s
NetworkPolicyName      : znk8s-discovery
NetworkPolicyUid       : 70157e7b-ee26-4706-945d-2ef0c579078b
PortsList              : 
RemoteEntities         : {}
RemoteSelectors        : {}
```

This cmdlet lists K8s Cluster Outbound Rules.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IK8SRulesList

## NOTES

## RELATED LINKS


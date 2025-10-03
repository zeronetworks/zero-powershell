### Example 1: List K8s Cluster Namespace inbound rules
```powershell
$k8sCluster = (Get-ZNK8SCluster).Items[0]
$k8sNamespace = (Get-ZNK8sNamespace -limit 400).Items | Where {$_.Name -eq "socks-shop"}
(Get-ZNK8SClusterNamespaceInboundRule -K8SClusterId $k8sCluster.Id -K8sNamespaceId $k8sNamespace.id).Items
```

```output
Action                 : 1
ClusterId              : k:c:osyL1WCW
Direction              : 1
EnvironmentId          : ca90ac47-3e4a-4898-baba-a1640fda83cd
ExcludedCidrsList      : 
HostNamespaceId        : k:n:ADiUcI8N
HostNamespaceName      : socks-shop
LocalEntityApplication : 
LocalEntityLabelsMap   : 
LocalEntitySubnet      : 
LocalEntityType        : 6
LocalSelectors         : {"matchLabels": {"name": "front-end"}}
NamespaceId            : k:n:ADiUcI8N
NamespaceName          : socks-shop
NetworkPolicyName      : allow-http-to-frontend
NetworkPolicyUid       : bbd6695d-840c-461a-8651-2253de83a552
PortsList              : 
RemoteEntities         : {}
RemoteSelectors        : {"ports":[{"port":"80","protocol":"TCP"}]}
```

This cmdlet lists K8s Cluster Namespace Inbound Rules.

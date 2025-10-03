### Example 1: List K8s Cluster Namespace outnbound rules
```powershell
$k8sCluster = (Get-ZNK8SCluster).Items[0]
$k8sNamespace = (Get-ZNK8sNamespace -limit 400).Items | Where {$_.Name -eq "znk8s"}
(Get-ZNK8SClusterNamespaceOutboundRule -K8SClusterId $k8sCluster.Id -K8sNamespaceId $k8sNamespace.id).Items
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

This cmdlet lists K8s Cluster Namespace Outbound Rules.

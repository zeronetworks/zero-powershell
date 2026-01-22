### Example 1: List rules for a K8s cluster label
```powershell
$k8scluster =  (Get-ZNK8SCluster).Items | where {$_.name -eq "okd"}
$k8sclusterLabel = (Get-ZNK8SClusterLabel -K8SClusterId $k8sCluster.id -Limit 400).Items | where {$_.value -eq "tcp-client"}
(Get-ZNK8SClusterLabelOutboundRule -K8SClusterId $k8scluster.Id -Label $($k8sclusterLabel.key+":"+$k8sclusterLabel.Value)).Items
```

```output
Action                 : 1
ClusterId              : k:c:0CpmyWaP
Direction              : 2
EnvironmentId          : ca90ac47-3e4a-4898-baba-a1640fda83cd
ExcludedCidrsList      : 
HostNamespaceId        : k:n:BxleMpUN
HostNamespaceName      : tcp-demo
LocalEntityApplication : tcp-client
LocalEntityLabelsMap   : 
LocalEntitySubnet      : 
LocalEntityType        : 5
LocalSelectors         : {"matchLabels":{"app":"tcp-client"}}
NamespaceId            : k:n:BxleMpUN
NamespaceName          : tcp-demo
NetworkPolicyName      : tcp-demo-networkpolicy
NetworkPolicyUid       : 8afafb8f-aa71-4430-835f-55d108efde25
PortsList              : 
RemoteEntities         : {}
RemoteSelectors        :
```

This cmdlet lists the outbound rules for a K8s Cluster label.

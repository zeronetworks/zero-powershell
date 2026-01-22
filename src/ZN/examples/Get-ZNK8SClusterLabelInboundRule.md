### Example 1: List rules for a K8s cluster label
```powershell
$k8scluster =  (Get-ZNK8SCluster).Items | where {$_.name -eq "okd"}
$k8sclusterLabel = (Get-ZNK8SClusterLabel -K8SClusterId $k8sCluster.id -Limit 400).Items | where {$_.value -eq "tcp-echo"}
(Get-ZNK8SClusterLabelInboundRule -K8SClusterId $k8scluster.Id -Label $($k8sclusterLabel.key+":"+$k8sclusterLabel.Value)).Items
```

```output
Action                 : 1
ClusterId              : k:c:0CpmyWaP
Direction              : 1
EnvironmentId          : ca90ac47-3e4a-4898-baba-a1640fda83cd
ExcludedCidrsList      : 
HostNamespaceId        : k:n:BxleMpUN
HostNamespaceName      : tcp-demo
LocalEntityApplication : tcp-echo
LocalEntityLabelsMap   : 
LocalEntitySubnet      : 
LocalEntityType        : 5
LocalSelectors         : {"matchLabels":{"app":"tcp-echo"}}
NamespaceId            : k:n:BxleMpUN
NamespaceName          : tcp-demo
NetworkPolicyName      : tcp-echo-networkpolicy
NetworkPolicyUid       : dbae7927-6964-4161-bfac-c4e34bd9d250
PortsList              : 
RemoteEntities         : {}
RemoteSelectors        : 
```

This cmdlet lists the inbound rules for a K8s Cluster label.

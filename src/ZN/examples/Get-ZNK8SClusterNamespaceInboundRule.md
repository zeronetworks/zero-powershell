### Example 1: List K8s Cluster inbound rules
```powershell
$k8sCluster = (Get-ZNK8SCluster).Items | Select-Object -First 1 
(Get-ZNK8SClusterInboundRule -K8SClusterId $k8sCluster.Id).Items
```

```output
Action                 : 2
ClusterId              : k:c:ASHpu3tF
Direction              : 1
EnvironmentId          : ca90ac47-3e4a-4898-baba-a1640fda83cd
ExcludedCidrsList      : 
HostNamespaceId        : k:n:iHi5Louz
HostNamespaceName      : assisted-installer
LocalEntityApplication : 
LocalEntityLabelsMap   : 
LocalEntitySubnet      : 
LocalEntityType        : 2
LocalSelectors         : {}
NamespaceId            : k:n:iHi5Louz
NamespaceName          : assisted-installer
NetworkPolicyName      : assisted-installer-network-policy
NetworkPolicyUid       : f13a97f7-bd8b-4b28-ae2c-870e3ac491d9
PortsList              : 
RemoteEntities         : {}
RemoteSelectors        : 

Action                 : 1
ClusterId              : k:c:ASHpu3tF
Direction              : 1
EnvironmentId          : ca90ac47-3e4a-4898-baba-a1640fda83cd
ExcludedCidrsList      : 
HostNamespaceId        : k:n:m8aCEkRh
HostNamespaceName      : openshift-operators
LocalEntityApplication : 
LocalEntityLabelsMap   : 
LocalEntitySubnet      : 
LocalEntityType        : 2
LocalSelectors         : {}
NamespaceId            : k:n:m8aCEkRh
NamespaceName          : openshift-operators
NetworkPolicyName      : default-allow-all
NetworkPolicyUid       : 2a7eb95d-742e-42dc-a2c9-bddd675c303a
PortsList              : 
RemoteEntities         : {}
RemoteSelectors        : 

Action                 : 2
ClusterId              : k:c:ASHpu3tF
Direction              : 1
EnvironmentId          : ca90ac47-3e4a-4898-baba-a1640fda83cd
ExcludedCidrsList      : 
HostNamespaceId        : k:n:2MDVWcX4
HostNamespaceName      : znk8s
LocalEntityApplication : 
LocalEntityLabelsMap   : 
LocalEntitySubnet      : 
LocalEntityType        : 7
LocalSelectors         : {"matchLabels":{"app.kubernetes.io/instance":"znk8s-cloud-connector","app.kubernetes.io/name":"znk8s-cloud-connector"}
                         }
NamespaceId            : k:n:2MDVWcX4
NamespaceName          : znk8s
NetworkPolicyName      : znk8s-discovery
NetworkPolicyUid       : c4484dbb-9f20-4408-b0c2-53549cd79578
PortsList              : 
RemoteEntities         : {}
RemoteSelectors        : 
```

This cmdlet lists K8s Cluster inbound rules.

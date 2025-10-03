### Example 1: List K8s Cluster Egress IPs
```powershell
$k8sCluster = (Get-ZNK8SCluster).Items[0]
(Get-ZNK8SClusterEgressIP -K8SClusterId $k8sCluster.Id).Items
```

```output
AffectedEntities : {}
ClusterId        : k:c:osyL1WCW
Id               : k:e:15mczi3s
Ips              : {192.168.2.245}
K8SUid           : 7d6fdb2b-58c0-45cf-bc9a-6f5621b742a2
Name             : egress-project1
RawSelector      : {"namespaceSelector": {"matchLabels": {"app": "tcp-client"}}, "podSelector": {"matchLabels": {"app": "tcp-client"}}}

AffectedEntities : {tcp-demo}
ClusterId        : k:c:osyL1WCW
Id               : k:e:YWvCvShz
Ips              : {192.168.2.245}
K8SUid           : 3e5eb9ce-c2e9-47f4-a7e1-ba3e5c50dbe9
Name             : egress-tcp-demo
RawSelector      : {"namespaceSelector": {"matchLabels": {"app": "tcp-demo"}}, "podSelector": {"matchLabels": {"app": "tcp-client"}}}
```

This cmdlet lists the K8s Cluster Egress IPs.

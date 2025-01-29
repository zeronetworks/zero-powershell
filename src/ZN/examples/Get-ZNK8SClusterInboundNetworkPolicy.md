### Example 1: List inbound network policy
```powershell
(Get-ZNK8SClusterInboundNetworkPolicy -ClusterId k:c:FYe7yLUJ).Items
```

```output
ClusterId       : k:c:FYe7yLUJ
EgressRules     : null
Id              : k:f:Ur1j9aup
IngressRules    : null
IsEgressPolicy  : False
IsIngressPolicy : True
K8SUid          : 6f084583-166e-4565-8e70-3af6955b17e3
Name            : assisted-installer-network-policy
NamespaceId     : k:n:4CvhlfjA
NamespaceName   : assisted-installer
SelectorString  : {}

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

This cmdlet lists the Inbound Network policies for a K8s cluster.

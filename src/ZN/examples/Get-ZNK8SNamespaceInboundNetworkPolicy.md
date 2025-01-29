### Example 1: List inbound network policy
```powershell
(Get-ZNK8SNamespaceInboundNetworkPolicy -NamespaceId k:n:Drq2fo6q).Items
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

This cmdlet lists the inbound Network policies for a namespace.

### Example 1: List K8s namespace applications
```powershell
$namepsace = (Get-ZNK8SClusterNamespace -K8SClusterId $cluster.id).Items[2]
(Get-ZNK8SNamespaceApplication -K8sNamespaceId $namespace.id).Items
```

```output
ClusterId   : k:c:FYe7yLUJ
ClusterName : 
Name        : csi-snapshot-controller
Namespaces  : {openshift-cluster-storage-operator}
Workloads   : {csi-snapshot-controller-5cf4c45688}

ClusterId   : k:c:FYe7yLUJ
ClusterName : 
Name        : csi-snapshot-controller-operator
Namespaces  : {openshift-cluster-storage-operator}
Workloads   : {csi-snapshot-controller-operator-6b59c57d84, csi-snapshot-controller-operator}

ClusterId   : k:c:FYe7yLUJ
ClusterName : 
Name        : csi-snapshot-webhook
Namespaces  : {openshift-cluster-storage-operator}
Workloads   : {csi-snapshot-webhook-c998ff56c, csi-snapshot-webhook-79fb6f8b56}
```

This cmdlet lists K8s namespace applications.

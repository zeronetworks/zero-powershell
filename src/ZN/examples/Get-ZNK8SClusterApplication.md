### Example 1: List K8s cluster applications
```powershell
$cluster = (Get-ZNK8SCluster).Items[0]
(Get-ZNK8SClusterApplication -K8SClusterId $cluster.id).Items
```

```output
ClusterId   : k:c:FYe7yLUJ
ClusterName : 
Name        : assisted-installer-controller
Namespaces  : {assisted-installer}
Workloads   : {assisted-installer-controller}

ClusterId   : k:c:FYe7yLUJ
ClusterName : 
Name        : authentication-operator
Namespaces  : {openshift-authentication-operator}
Workloads   : {authentication-operator, authentication-operator-7d79cf7cfd}

ClusterId   : k:c:FYe7yLUJ
ClusterName : 
Name        : catalog-operator
Namespaces  : {openshift-operator-lifecycle-manager}
Workloads   : {catalog-operator, catalog-operator-844c58664}
...
```

This cmdlet lists K8s cluster applications.

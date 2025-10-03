### Example 1: List K8s Cluster Namespace labels
```powershell
$k8sCluster = (Get-ZNK8SCluster).Items[0]
$k8sNamespace = (Get-ZNK8sNamespace -Limit 400).Items | where {$_.Name -eq "znk8s"}
(Get-ZNK8SClusterNamespaceLabel -K8SClusterId $k8sCluster.Id -K8SNamespaceId $k8sNamespace.Id).Items
```

```output
ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app
Namespaces  : {}
Nodes       : {}
Value       : znk8s-discovery
Workloads   : {znk8s-discovery}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app.kubernetes.io/component
Namespaces  : {}
Nodes       : {}
Value       : agent
Workloads   : {znk8s-visibility}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app.kubernetes.io/instance
Namespaces  : {}
Nodes       : {}
Value       : znk8s-cloud-connector
Workloads   : {znk8s-visibility, znk8s-discovery}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app.kubernetes.io/managed-by
Namespaces  : {}
Nodes       : {}
Value       : Helm
Workloads   : {znk8s-visibility, znk8s-discovery}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app.kubernetes.io/name
Namespaces  : {}
Nodes       : {}
Value       : tetragon
Workloads   : {znk8s-visibility}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app.kubernetes.io/name
Namespaces  : {}
Nodes       : {}
Value       : znk8s-cloud-connector
Workloads   : {znk8s-discovery}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app.kubernetes.io/part-of
Namespaces  : {}
Nodes       : {}
Value       : tetragon
Workloads   : {znk8s-visibility}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app.kubernetes.io/part-of
Namespaces  : {}
Nodes       : {}
Value       : znk8s-cloud-connector
Workloads   : {znk8s-discovery}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app.kubernetes.io/version
Namespaces  : {}
Nodes       : {}
Value       : 0.2.1
Workloads   : {znk8s-discovery}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app.kubernetes.io/version
Namespaces  : {}
Nodes       : {}
Value       : 1.4.0
Workloads   : {znk8s-visibility}
```

This cmdlet lists K8s Cluster Namespace labels.

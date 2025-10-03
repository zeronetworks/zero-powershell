### Example 1: List K8s Cluster Namespace labels
```powershell
$k8sCluster = (Get-ZNK8SCluster).Items[0]
$k8sWorkload = (Get-ZNK8SWorkload -Limit 400).Items | Where {$_.Name -eq "znk8s-visibility"}
(Get-ZNK8SWorkloadLabel -K8sWorkloadId $k8sWorkload.id).Items
```

```output
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
Workloads   : {znk8s-visibility}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app.kubernetes.io/managed-by
Namespaces  : {}
Nodes       : {}
Value       : Helm
Workloads   : {znk8s-visibility}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app.kubernetes.io/name
Namespaces  : {}
Nodes       : {}
Value       : tetragon
Workloads   : {znk8s-visibility}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app.kubernetes.io/part-of
Namespaces  : {}
Nodes       : {}
Value       : tetragon
Workloads   : {znk8s-visibility}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app.kubernetes.io/version
Namespaces  : {}
Nodes       : {}
Value       : 1.4.0
Workloads   : {znk8s-visibility}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : helm.sh/chart
Namespaces  : {}
Nodes       : {}
Value       : tetragon-1.4.0
Workloads   : {znk8s-visibility}
```

This cmdlet lists K8s Workload labels.

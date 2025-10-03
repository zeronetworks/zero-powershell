### Example 1: List K8s Cluster Workload labels
```powershell
$k8sCluster = (Get-ZNK8SCluster).Items[0]
$k8sNamespace = (Get-ZNK8sNamespace -limit 400).Items | Where {$_.Name -eq "socks-shop"}
(Get-ZNK8SNamespaceLabel -K8SClusterId $k8sCluster.Id -K8sNamespaceId $k8sNamespace.id).Items
```

```output
ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : kubernetes.io/metadata.name
Namespaces  : {socks-shop}
Nodes       : {}
Value       : socks-shop
Workloads   : {}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : name
Namespaces  : {}
Nodes       : {}
Value       : carts
Workloads   : {carts-75c4f8b949, carts}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : name
Namespaces  : {}
Nodes       : {}
Value       : carts-db
Workloads   : {carts-db, carts-db-d9b755fb6}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : name
Namespaces  : {}
Nodes       : {}
Value       : catalogue
Workloads   : {catalogue, catalogue-7c94d6d}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : name
Namespaces  : {}
Nodes       : {}
Value       : catalogue-db
Workloads   : {catalogue-db, catalogue-db-65554b764d}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : name
Namespaces  : {}
Nodes       : {}
Value       : front-end
Workloads   : {front-end-6bbf8d46c4}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : name
Namespaces  : {}
Nodes       : {}
Value       : orders
Workloads   : {orders-7f9bccc7cd, orders}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : name
Namespaces  : {}
Nodes       : {}
Value       : orders-db
Workloads   : {orders-db, orders-db-585f6dcbd8}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : name
Namespaces  : {}
Nodes       : {}
Value       : payment
Workloads   : {payment, payment-5b65cdd849}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : name
Namespaces  : {}
Nodes       : {}
Value       : queue-master
Workloads   : {queue-master-6878f6cf8d, queue-master}
```

This cmdlet lists K8s Namespace labels.

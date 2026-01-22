---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znk8sclusternamespaceinboundrule
schema: 2.0.0
---

# Get-ZNK8SClusterNamespaceInboundRule

## SYNOPSIS
Returns a list of rules in the k8s cluster namespace.

## SYNTAX

```
Get-ZNK8SClusterNamespaceInboundRule -K8SClusterId <String> -K8SNamespaceId <String> [-AccountName <String>]
 [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of rules in the k8s cluster namespace.

## EXAMPLES

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

## PARAMETERS

### -AccountName
this value is per customer / partner

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Read-ZNJWTtoken $env:ZNApiKey).aud.split(".")[0]
Accept pipeline input: False
Accept wildcard characters: False
```

### -Filters
JSON string URI encoded set of filters

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -K8SClusterId
cluserId to filter on

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -K8SNamespaceId
id of the K8s namespace

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Limit
Limit the return results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Offset
Used to page through results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IK8SRulesList

## NOTES

## RELATED LINKS


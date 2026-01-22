---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znk8sclusterlabeloutboundrule
schema: 2.0.0
---

# Get-ZNK8SClusterLabelOutboundRule

## SYNOPSIS
Returns a list of rules in the k8s cluster label.

## SYNTAX

```
Get-ZNK8SClusterLabelOutboundRule -K8SClusterId <String> -Label <String> [-AccountName <String>]
 [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of rules in the k8s cluster label.

## EXAMPLES

### Example 1: List rules for a K8s cluster label
```powershell
$k8scluster =  (Get-ZNK8SCluster).Items | where {$_.name -eq "okd"}
$k8sclusterLabel = (Get-ZNK8SClusterLabel -K8SClusterId $k8sCluster.id -Limit 400).Items | where {$_.value -eq "tcp-client"}
(Get-ZNK8SClusterLabelOutboundRule -K8SClusterId $k8scluster.Id -Label $($k8sclusterLabel.key+":"+$k8sclusterLabel.Value)).Items
```

```output
Action                 : 1
ClusterId              : k:c:0CpmyWaP
Direction              : 2
EnvironmentId          : ca90ac47-3e4a-4898-baba-a1640fda83cd
ExcludedCidrsList      : 
HostNamespaceId        : k:n:BxleMpUN
HostNamespaceName      : tcp-demo
LocalEntityApplication : tcp-client
LocalEntityLabelsMap   : 
LocalEntitySubnet      : 
LocalEntityType        : 5
LocalSelectors         : {"matchLabels":{"app":"tcp-client"}}
NamespaceId            : k:n:BxleMpUN
NamespaceName          : tcp-demo
NetworkPolicyName      : tcp-demo-networkpolicy
NetworkPolicyUid       : 8afafb8f-aa71-4430-835f-55d108efde25
PortsList              : 
RemoteEntities         : {}
RemoteSelectors        :
```

This cmdlet lists the outbound rules for a K8s Cluster label.

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

### -Label
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


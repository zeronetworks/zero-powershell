---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znk8snamespaceinboundrule
schema: 2.0.0
---

# Get-ZNK8SNamespaceInboundRule

## SYNOPSIS
Returns a list of rules in the k8s namespace.

## SYNTAX

```
Get-ZNK8SNamespaceInboundRule -K8SNamespaceId <String> [-AccountName <String>] [-Filters <String>]
 [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of rules in the k8s namespace.

## EXAMPLES

### Example 1: List K8s Cluster Namespace inbound rules
```powershell
$k8sCluster = (Get-ZNK8SCluster).Items[0]
$k8sNamespace = (Get-ZNK8sNamespace -limit 400).Items | Where {$_.Name -eq "socks-shop"}
(Get-ZNK8SClusterNamespaceInboundRule -K8SClusterId $k8sCluster.Id -K8sNamespaceId $k8sNamespace.id).Items
```

```output
Action                 : 1
ClusterId              : k:c:osyL1WCW
Direction              : 1
EnvironmentId          : ca90ac47-3e4a-4898-baba-a1640fda83cd
ExcludedCidrsList      : 
HostNamespaceId        : k:n:ADiUcI8N
HostNamespaceName      : socks-shop
LocalEntityApplication : 
LocalEntityLabelsMap   : 
LocalEntitySubnet      : 
LocalEntityType        : 6
LocalSelectors         : {"matchLabels": {"name": "front-end"}}
NamespaceId            : k:n:ADiUcI8N
NamespaceName          : socks-shop
NetworkPolicyName      : allow-http-to-frontend
NetworkPolicyUid       : bbd6695d-840c-461a-8651-2253de83a552
PortsList              : 
RemoteEntities         : {}
RemoteSelectors        : {"ports":[{"port":"80","protocol":"TCP"}]}
```

This cmdlet lists K8s Cluster Namespace Inbound Rules.

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


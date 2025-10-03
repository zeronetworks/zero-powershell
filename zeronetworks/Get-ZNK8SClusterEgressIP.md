---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znk8sclusteregressip
schema: 2.0.0
---

# Get-ZNK8SClusterEgressIP

## SYNOPSIS
Returns the egress IPs for a K8s cluster.

## SYNTAX

```
Get-ZNK8SClusterEgressIP -K8SClusterId <String> [-AccountName <String>] [-Filters <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-WithCount] [<CommonParameters>]
```

## DESCRIPTION
Returns the egress IPs for a K8s cluster.

## EXAMPLES

### Example 1: List K8s Cluster Egress IPs
```powershell
$k8sCluster = (Get-ZNK8SCluster).Items[0]
(Get-ZNK8SClusterEgressIP -K8SClusterId $k8sCluster.Id).Items
```

```output
AffectedEntities : {}
ClusterId        : k:c:osyL1WCW
Id               : k:e:15mczi3s
Ips              : {192.168.2.245}
K8SUid           : 7d6fdb2b-58c0-45cf-bc9a-6f5621b742a2
Name             : egress-project1
RawSelector      : {"namespaceSelector": {"matchLabels": {"app": "tcp-client"}}, "podSelector": {"matchLabels": {"app": "tcp-client"}}}

AffectedEntities : {tcp-demo}
ClusterId        : k:c:osyL1WCW
Id               : k:e:YWvCvShz
Ips              : {192.168.2.245}
K8SUid           : 3e5eb9ce-c2e9-47f4-a7e1-ba3e5c50dbe9
Name             : egress-tcp-demo
RawSelector      : {"namespaceSelector": {"matchLabels": {"app": "tcp-demo"}}, "podSelector": {"matchLabels": {"app": "tcp-client"}}}
```

This cmdlet lists the K8s Cluster Egress IPs.

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

### -WithCount
return count of objects

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: $true
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IK8SEgressIplist

## NOTES

## RELATED LINKS


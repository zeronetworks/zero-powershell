---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znk8sclusterlabel
schema: 2.0.0
---

# Get-ZNK8SClusterLabel

## SYNOPSIS
Returns a list of labels for the K8s.

## SYNTAX

### Get (Default)
```
Get-ZNK8SClusterLabel -K8SClusterId <String> [-AccountName <String>] [-Filters <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Order <String>] [-OrderColumns <String>] [-WithCount] [<CommonParameters>]
```

### Get1
```
Get-ZNK8SClusterLabel -K8SClusterId <String> -Label <String> [-AccountName <String>] [<CommonParameters>]
```

### GetViaIdentity1
```
Get-ZNK8SClusterLabel -InputObject <IApiIdentity> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of labels for the K8s.

## EXAMPLES

### Example 1: List K8s Cluster lables
```powershell
$k8sCluster = (Get-ZNK8SCluster).Items[0]
(Get-ZNK8SClusterLabel -K8SClusterId $k8sCluster.id).Items
```

```output
ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : apiserver
Namespaces  : {}
Nodes       : {}
Value       : true
Workloads   : {apiserver-5bb9ddb758, apiserver-c886c4f49, apiserver-ddc85c599, apiserver…}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app
Namespaces  : {}
Nodes       : {}
Value       : assisted-installer-controller
Workloads   : {assisted-installer-controller}

ClusterId   : k:c:osyL1WCW
ClusterName : openshift
Key         : app
Namespaces  : {}
Nodes       : {}
Value       : authentication-operator
Workloads   : {authentication-operator, authentication-operator-c45b9fb9c}
...
```

This cmdlet lists K8s Cluster labels.

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
Parameter Sets: Get
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Identity Parameter

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IApiIdentity
Parameter Sets: GetViaIdentity1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -K8SClusterId
cluserId to filter on

```yaml
Type: System.String
Parameter Sets: Get, Get1
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
Parameter Sets: Get1
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
Parameter Sets: Get
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
Parameter Sets: Get
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Order
What order to sort the results

```yaml
Type: System.String
Parameter Sets: Get
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OrderColumns
what column to order on

```yaml
Type: System.String
Parameter Sets: Get
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WithCount
return count of objects

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: Get
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IApiIdentity

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IK8SLabelEntity

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IK8SLabelsList

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`INPUTOBJECT <IApiIdentity>`: Identity Parameter
  - `[ApplicationName <String>]`: application name to filter on
  - `[AssetId <String>]`: assetId to filter on
  - `[ClientId <String>]`: clientId to filter on
  - `[ConnectServerId <String>]`: connect server id
  - `[CustomUserId <String>]`: id of the customer user
  - `[DomainId <String>]`: The fqdn of the domain
  - `[EntityId <String>]`: The id of the user or group
  - `[ExportId <String>]`: exportId to download
  - `[ExternalId <String>]`: The external id of the group
  - `[FieldName <String>]`: The field name to filter on
  - `[FilterId <String>]`: The saved filter id
  - `[ForestId <String>]`: The forest id
  - `[GroupId <String>]`: groupId to filter on
  - `[GroupOrAssetId <String>]`: group or asset id to filter on
  - `[GroupOrUserId <String>]`: group or user id to filter on
  - `[GroupType <String>]`: group type to filter on
  - `[IdentityProviderId <String>]`: Identity provider Id
  - `[K8SClusterId <String>]`: cluserId to filter on
  - `[K8SNamespaceId <String>]`: id of the K8s namespace
  - `[K8SWorkloadId <String>]`: id of the K8s workload
  - `[Label <String>]`: id of the K8s namespace
  - `[LicenseType <String>]`: The license type
  - `[MaintenanceWindowId <String>]`: id of the maintence window
  - `[PolicyId <String>]`: id of the external acess policy
  - `[ProtectionPolicyId <String>]`: The id of the onboarding policy
  - `[PushIdentityProviderId <String>]`: Push Identity provider Id
  - `[ReactivePolicyId <String>]`: The id of the MFA policy
  - `[ReceiverType <String>]`: receiver type
  - `[RegionId <String>]`: connect region id
  - `[RoleEntityId <String>]`: The id of the user or group
  - `[RuleId <String>]`: The id of the rule
  - `[SessionId <String>]`: The id of the session
  - `[SiemEventType <String>]`: siem event type for the query
  - `[SwitchId <String>]`: switch to delete
  - `[UserAccessConfigId <String>]`: userAccessConfigId to filter on
  - `[UserId <String>]`: userId to filter on

## RELATED LINKS


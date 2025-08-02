---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znk8sclusterapplication
schema: 2.0.0
---

# Get-ZNK8SClusterApplication

## SYNOPSIS
Returns a list of applications for the K8s.

## SYNTAX

### Get (Default)
```
Get-ZNK8SClusterApplication -K8SClusterId <String> [-AccountName <String>] [-Filters <String>]
 [-Limit <Int32>] [-Offset <Int32>] [-Order <String>] [-OrderColumns <String>] [-WithCount]
 [<CommonParameters>]
```

### Get1
```
Get-ZNK8SClusterApplication -ApplicationName <String> -K8SClusterId <String> [-AccountName <String>]
 [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-Order <String>] [-OrderColumns <String>]
 [-WithCount] [<CommonParameters>]
```

### GetViaIdentity1
```
Get-ZNK8SClusterApplication -InputObject <IApiIdentity> [-AccountName <String>] [-Filters <String>]
 [-Limit <Int32>] [-Offset <Int32>] [-Order <String>] [-OrderColumns <String>] [-WithCount]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of applications for the K8s.

## EXAMPLES

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

### -ApplicationName
application name to filter on

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

### -InputObject
Identity Parameter
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

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

### -Order
What order to sort the results

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

### -OrderColumns
what column to order on

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IApiIdentity

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IK8SApplicationEntity

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IK8SApplicationsList

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


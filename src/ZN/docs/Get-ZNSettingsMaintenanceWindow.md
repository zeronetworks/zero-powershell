---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsmaintenancewindow
schema: 2.0.0
---

# Get-ZNSettingsMaintenanceWindow

## SYNOPSIS
Returns the maintenance window properties

## SYNTAX

### List (Default)
```
Get-ZNSettingsMaintenanceWindow [-AccountName <String>] [<CommonParameters>]
```

### Get
```
Get-ZNSettingsMaintenanceWindow -MaintenanceWindowId <String> [-AccountName <String>] [<CommonParameters>]
```

### Get1
```
Get-ZNSettingsMaintenanceWindow -MaintenanceWindowId <String> [-AccountName <String>] [<CommonParameters>]
```

### GetViaIdentity1
```
Get-ZNSettingsMaintenanceWindow -InputObject <IApiIdentity> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns the maintenance window properties

## EXAMPLES

### Example 1: List maintenance windows
```powershell
Get-ZNSettingsMaintenanceWindow
```

```output
CreatedAt     : 1728092138778
CreatedById   : u:a:JnQxZS6j
CreatedByName : nicholas-ad
Id            : e:m:eCoheWFb
IsDefault     : True
Name          : Default
StartTime     : 4
UpdatedAt     : 1728092138778
UpdatedById   : 
UpdatedByName : 
Weekday       : 1
```

This cmdlet lists maintenance windows.

### Example 2: Get a maintenance window
```powershell
Get-ZNSettingsMaintenanceWindow -MaintenanceWindowId e:m:eCoheWFb
```

```output
CreatedAt     : 1728092138778
CreatedById   : u:a:JnQxZS6j
CreatedByName : nicholas-ad
Id            : e:m:eCoheWFb
IsDefault     : True
Name          : Default
StartTime     : 4
UpdatedAt     : 1728092138778
UpdatedById   : 
UpdatedByName : 
Weekday       : 1
```

This cmdlet gets a maintenance window.

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

### -MaintenanceWindowId
id of the maintence window

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IApiIdentity

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IMaintenanceWindowItems

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IMaintenanceWindowList

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`INPUTOBJECT <IApiIdentity>`: Identity Parameter
  - `[ActivityType <String>]`: the activity type
  - `[ApplicationName <String>]`: application name to filter on
  - `[AssetId <String>]`: assetId to filter on
  - `[ClientId <String>]`: clientId to filter on
  - `[ConnectServerId <String>]`: connect server id
  - `[CustomUserId <String>]`: id of the customer user
  - `[DeploymentsClusterId <String>]`: 
  - `[DomainId <String>]`: The fqdn of the domain
  - `[EntityId <String>]`: The id of the user or group
  - `[ExportId <String>]`: exportId to download
  - `[ExternalId <String>]`: The external id of the group
  - `[FieldName <String>]`: The field name to filter on
  - `[FilterId <String>]`: The saved filter id
  - `[ForestId <String>]`: The forest id
  - `[FreezePeriodId <String>]`: id of freeze period
  - `[GroupId <String>]`: groupId to filter on
  - `[GroupOrAssetId <String>]`: group or asset id to filter on
  - `[GroupOrUserId <String>]`: group or user id to filter on
  - `[GroupType <String>]`: group type to filter on
  - `[IPAliasId <String>]`: IP Alias ID
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
  - `[WidgetId <String>]`: The id of the widget

## RELATED LINKS


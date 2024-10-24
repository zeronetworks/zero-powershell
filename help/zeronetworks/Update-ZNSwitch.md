---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/update-znswitch
schema: 2.0.0
---

# Update-ZNSwitch

## SYNOPSIS
update a switch

## SYNTAX

### PutExpanded (Default)
```
Update-ZNSwitch [-AccountName <String>] [-ItemIP <String>] [-ItemName <String>] [-ItemPassword <String>]
 [-ItemType <String>] [-ItemUsername <String>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Patch
```
Update-ZNSwitch -SwitchId <String> -Body <ISwitch> [-AccountName <String>] [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### PatchExpanded
```
Update-ZNSwitch -SwitchId <String> [-AccountName <String>] [-ItemIP <String>] [-ItemName <String>]
 [-ItemPassword <String>] [-ItemType <String>] [-ItemUsername <String>] [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### PatchViaIdentity
```
Update-ZNSwitch -InputObject <IApiIdentity> -Body <ISwitch> [-AccountName <String>] [-PassThru] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

### PatchViaIdentityExpanded
```
Update-ZNSwitch -InputObject <IApiIdentity> [-AccountName <String>] [-ItemIP <String>] [-ItemName <String>]
 [-ItemPassword <String>] [-ItemType <String>] [-ItemUsername <String>] [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Put
```
Update-ZNSwitch -Body <ISwitch> [-AccountName <String>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
update a switch

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
{{ Add code here }}
```

```output
{{ Add output here (remove the output block if the example doesn't have an output) }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
{{ Add code here }}
```

```output
{{ Add output here (remove the output block if the example doesn't have an output) }}
```

{{ Add description here }}

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

### -Body
.
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISwitch
Parameter Sets: Patch, PatchViaIdentity, Put
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -InputObject
Identity Parameter
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IApiIdentity
Parameter Sets: PatchViaIdentity, PatchViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ItemIP
.

```yaml
Type: System.String
Parameter Sets: PatchExpanded, PatchViaIdentityExpanded, PutExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ItemName
.

```yaml
Type: System.String
Parameter Sets: PatchExpanded, PatchViaIdentityExpanded, PutExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ItemPassword
.

```yaml
Type: System.String
Parameter Sets: PatchExpanded, PatchViaIdentityExpanded, PutExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ItemType
.

```yaml
Type: System.String
Parameter Sets: PatchExpanded, PatchViaIdentityExpanded, PutExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ItemUsername
.

```yaml
Type: System.String
Parameter Sets: PatchExpanded, PatchViaIdentityExpanded, PutExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Returns true when the command succeeds

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SwitchId
switch to delete

```yaml
Type: System.String
Parameter Sets: Patch, PatchExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IApiIdentity

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISwitch

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`BODY <ISwitch>`: .
  - `[ItemIP <String>]`: 
  - `[ItemName <String>]`: 
  - `[ItemPassword <String>]`: 
  - `[ItemType <String>]`: 
  - `[ItemUsername <String>]`: 

`INPUTOBJECT <IApiIdentity>`: Identity Parameter
  - `[AssetId <String>]`: assetId to filter on
  - `[ClientId <String>]`: clientId to filter on
  - `[ConnectServerId <String>]`: connect server id
  - `[CustomUserId <String>]`: id of the customer user
  - `[DomainId <String>]`: The fqdn of the domain
  - `[EntityId <String>]`: The id of the user or group
  - `[ExportId <String>]`: exportId to download
  - `[ExternalId <String>]`: The external id of the group
  - `[FilterId <String>]`: The saved filter id
  - `[ForestId <String>]`: The forest id
  - `[GroupId <String>]`: groupId to filter on
  - `[GroupOrAssetId <String>]`: group or asset id to filter on
  - `[GroupOrUserId <String>]`: group or user id to filter on
  - `[GroupType <String>]`: group type to filter on
  - `[IdentityProviderId <String>]`: Identity provider Id
  - `[MaintenanceWindowId <String>]`: id of the maintence window
  - `[OnboardingPolicyId <String>]`: The id of the onboarding policy
  - `[PolicyId <String>]`: id of the external acess policy
  - `[ProtectionType <String>]`: protection type
  - `[PushIdentityProviderId <String>]`: Push Identity provider Id
  - `[ReactivePolicyId <String>]`: The id of the MFA policy
  - `[RegionId <String>]`: connect region id
  - `[RoleEntityId <String>]`: The id of the user or group
  - `[RuleId <String>]`: The id of the rule
  - `[SessionId <String>]`: The id of the session
  - `[SwitchId <String>]`: switch to delete
  - `[UserAccessConfigId <String>]`: userAccessConfigId to filter on
  - `[UserId <String>]`: userId to filter on

## RELATED LINKS


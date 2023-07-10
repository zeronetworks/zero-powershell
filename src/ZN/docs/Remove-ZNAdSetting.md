---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/remove-znadsetting
schema: 2.0.0
---

# Remove-ZNAdSetting

## SYNOPSIS
Remove AD forest settings.

## SYNTAX

### Remove (Default)
```
Remove-ZNAdSetting -Forest <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### RemoveViaIdentity
```
Remove-ZNAdSetting -InputObject <IApiIdentity> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Remove AD forest settings.

## EXAMPLES

### Example 1: Remove an AD forest
```powershell
$ad = Get-ZNAdSetting | where {$_.ActiveDirectoryInfoDomainName -eq 'posh.local'}
Remove-ZNAdSetting -Forest ($ad.ForestId)
```

```output

```

This cmdlet removes and AD forest setting.

## PARAMETERS

### -Forest
The forest id

```yaml
Type: System.String
Parameter Sets: Remove
Aliases:

Required: True
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
Parameter Sets: RemoveViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAny

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


INPUTOBJECT <IApiIdentity>: Identity Parameter
  - `[AssetId <String>]`: assetId to filter on
  - `[ClientId <String>]`: clientId to filter on
  - `[DepId <String>]`: The deploymentId
  - `[DomainId <String>]`: The fqdn of the domain
  - `[ExportId <String>]`: exportId to download
  - `[Forest <String>]`: The forest id
  - `[GroupId <String>]`: groupId to filter on
  - `[GroupOrAssetId <String>]`: group or asset id to filter on
  - `[GroupOrUserId <String>]`: group or user id to filter on
  - `[GroupType <String>]`: group type to filter on
  - `[IdentityProviderId <String>]`: Identity provider Id
  - `[ProtectionPolicyId <String>]`: The id of the protection policy
  - `[ReactivePolicyId <String>]`: The id of the MFA policy
  - `[RoleEntityId <String>]`: The id of the user
  - `[RuleId <String>]`: The id of the rule
  - `[SessionId <String>]`: The id of the session
  - `[UserAccessConfigId <String>]`: userAccessConfigId to filter on
  - `[UserId <String>]`: userId to filter on

## RELATED LINKS


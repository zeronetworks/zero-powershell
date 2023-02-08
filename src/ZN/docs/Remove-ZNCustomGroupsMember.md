---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/remove-zncustomgroupsmember
schema: 2.0.0
---

# Remove-ZNCustomGroupsMember

## SYNOPSIS
Returns an empty object.

## SYNTAX

### DeleteExpanded (Default)
```
Remove-ZNCustomGroupsMember -GroupId <String> -MembersId <String[]> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Delete
```
Remove-ZNCustomGroupsMember -GroupId <String> -Body <ICustomGroupMembersBody> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### DeleteViaIdentityExpanded
```
Remove-ZNCustomGroupsMember -InputObject <IApiIdentity> -MembersId <String[]> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns an empty object.

## EXAMPLES

### Example 1: Remove a member of a custom group
```powershell
Remove-ZNCustomGroupsMember -GroupId "g:c:gP9POclU" -MembersId "a:a:GnyWAsYs"
```

This cmdlet removes a member from a custom group.

## PARAMETERS

### -Body
.
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.ICustomGroupMembersBody
Parameter Sets: Delete
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -GroupId
members id

```yaml
Type: System.String
Parameter Sets: Delete, DeleteExpanded
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
Parameter Sets: DeleteViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -MembersId
members id

```yaml
Type: System.String[]
Parameter Sets: DeleteExpanded, DeleteViaIdentityExpanded
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ICustomGroupMembersBody

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAny

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`BODY <ICustomGroupMembersBody>`: .
  - `MembersId <String[]>`: members id

`INPUTOBJECT <IApiIdentity>`: Identity Parameter
  - `[AssetId <String>]`: The id of the asset
  - `[ClientId <String>]`: Client Id
  - `[DomainId <String>]`: The fqdn of the domain
  - `[EntityId <String>]`: entityId to filter on
  - `[ExportId <String>]`: exportId to download
  - `[GroupId <String>]`: members id
  - `[IdentityProviderId <String>]`: Identity provider Id
  - `[ProtectionPolicyId <String>]`: The id of the protection policy
  - `[ReactivePolicyId <String>]`: The id of the MFA policy
  - `[RoleEntityId <String>]`: The id of the user
  - `[RuleId <String>]`: The id of the rule

## RELATED LINKS

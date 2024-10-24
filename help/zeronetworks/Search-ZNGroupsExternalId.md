---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/search-zngroupsexternalid
schema: 2.0.0
---

# Search-ZNGroupsExternalId

## SYNOPSIS
Returns a group.

## SYNTAX

```
Search-ZNGroupsExternalId -ExternalId <String> -GroupType <String> [-AccountName <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a group.

## EXAMPLES

### Example 1: Search for a group
```powershell
Search-ZNGroupsExternalId -ExternalId f177f4ba-6e33-4d11-9e4b-e6b2b94302e9 -GroupType snow
```

```output
AddedById               : 
AddedByName             : 
ItemAddedAt             : 
ItemCreatedAt           : 1728158885206
ItemDescription         : SNOW Sync
ItemDirectMembersCount  : 2
ItemDomain              : ServiceNow
ItemExternalId          : f177f4ba-6e33-4d11-9e4b-e6b2b94302e9
ItemGuid                : dffb1198-61ed-4f09-8429-b6d92cbe8511
ItemHasProtectionPolicy : 
ItemId                  : g:n:821fRRdi
ItemName                : Information Sharing
ItemPrincipalName       : 
ItemRole                : 3
ItemSid                 : 
ItemUpdatedAt           : 1728158885206
```

This cmdlet searches for a group by type and external id.

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

### -ExternalId
The external id of the group

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

### -GroupType
group type to filter on

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IGroupItem

## NOTES

## RELATED LINKS


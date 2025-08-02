---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znassetspreferredsegmentserver
schema: 2.0.0
---

# Get-ZNAssetsPreferredSegmentServer

## SYNOPSIS
Returns the preferred segment server id.

## SYNTAX

### GetExpanded (Default)
```
Get-ZNAssetsPreferredSegmentServer -AssetId <String> [-AccountName <String>] [<CommonParameters>]
```

### Get
```
Get-ZNAssetsPreferredSegmentServer -Body <IAssetsPreferredSegmentServerBody> [-AccountName <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns the preferred segment server id.

## EXAMPLES

### Example 1: Get Preferred Segment Server
```powershell
Get-ZNAssetsPreferredSegmentServer -AssetId a:n:c9PBr848
```

```output
PreferredDeployment
-------------------
c9d9e857-5f32-48ea-b9b5-9febd9f46605
```

This cmdlet gets the preferred segment server of an asset.

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

### -AssetId
.

```yaml
Type: System.String
Parameter Sets: GetExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
.
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsPreferredSegmentServerBody
Parameter Sets: Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsPreferredSegmentServerBody

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsPreferredSegmentServer

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`BODY <IAssetsPreferredSegmentServerBody>`: .
  - `AssetId <String>`: 

## RELATED LINKS


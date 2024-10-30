---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetotmemberof
schema: 2.0.0
---

# Get-ZNAssetOtMemberOf

## SYNOPSIS
Returns a list of groups the asset is a member of.

## SYNTAX

```
Get-ZNAssetOtMemberOf -AssetId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of groups the asset is a member of.

## EXAMPLES

### Example 1: List Member of groups for an OT asset
```powershell
$otasset = Get-ZNAssetsOt | where {$_.Fqdn -eq "ot1777"}
Get-ZNAssetOtMemberOf -AssetId $otasset.Id
```

```output
Id           Name                     Description                                              DirectMembersCount
--           ----                     -----------                                              ------------------
g:o:04445453 Cameras                  Includes all camera devices in the environment           27
g:s:16445453 OT/IoT devices           Includes all OT/IoT devices in the environment           29
g:s:17445453 Segmented OT/IoT devices Includes all segmented OT/IoT devices in the environment 2
```

This cmdlet returns groups the asset is a member of for an OT asset.

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
assetId to filter on

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAncestors

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


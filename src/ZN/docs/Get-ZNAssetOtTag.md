---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetottag
schema: 2.0.0
---

# Get-ZNAssetOtTag

## SYNOPSIS
Returns a list of tags for an entity.

## SYNTAX

```
Get-ZNAssetOtTag -AssetId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of tags for an entity.

## EXAMPLES

### Example 1: List OT asset tags
```powershell
$otasset = Get-ZNAssetsOt | where {$_.Fqdn -eq "ot1777"}
Get-ZNAssetOtTag -AssetId $otasset.Id
```

```output
Id           Name                  Description                                       DirectMembersCount
--           ----                  -----------                                       ------------------
g:t:27445453 Network Scanners      Includes network Scanners in the environment      1
g:t:30445453 Offensive Cyber tools Includes offensive cyber tools in the environment 1
```

This cmdlet lists tags for an OT asset.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ITags

## NOTES

## RELATED LINKS


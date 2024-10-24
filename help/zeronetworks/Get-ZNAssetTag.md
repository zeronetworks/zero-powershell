---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znassettag
schema: 2.0.0
---

# Get-ZNAssetTag

## SYNOPSIS
Returns a list of tags for an entity.

## SYNTAX

```
Get-ZNAssetTag -AssetId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of tags for an entity.

## EXAMPLES

### Example 1: Get tags for an asset
```powershell
Get-ZNAssetTag -AssetId a:a:ZgBWOMyc
```

```output
CreatedAt     Description                                        DirectMembersCount Domain Guid                                 HasPro
                                                                                                                                tectio
                                                                                                                                nPolic
                                                                                                                                y
---------     -----------                                        ------------------ ------ ----                                 ------
1656865698131 Includes all Domain Controllers in the environment 1                  tag    1246686d-9e06-488a-ae88-414fc3fda24d True 
```

This cmdlet gets the tags for an asset.

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


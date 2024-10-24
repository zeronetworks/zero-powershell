---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znassetpreferredsegmentserver
schema: 2.0.0
---

# Get-ZNAssetPreferredSegmentServer

## SYNOPSIS
Returns the preferred segment server id.

## SYNTAX

```
Get-ZNAssetPreferredSegmentServer -AssetId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns the preferred segment server id.

## EXAMPLES

### Example 1: Get preferred segment server
```powershell
Get-ZNAssetPreferredSegmentServer -AssetId a:a:ZgBWOMyc
```

```output
Error1    Message
------    -------
not found 
```

This cmdlet gets the preferred segement server for an asset.
If not found is returned, a preferred server has not been set.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsPreferredSegmentServer

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


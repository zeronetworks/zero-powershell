---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znassetmirrorcandidate
schema: 2.0.0
---

# Get-ZNAssetMirrorCandidate

## SYNOPSIS
Get mirror candidates

## SYNTAX

```
Get-ZNAssetMirrorCandidate -AssetId <String> [-AccountName <String>] [-Limit <Int32>] [-Offset <Int32>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Get mirror candidates

## EXAMPLES

### Example 1: Get mirror candidates
```powershell
Get-ZNAssetMirrorCandidate -AssetId a:a:JF2xro6g
```

```output
AssetType BreakGlassActivated Domain     Id           IdentityProtectionState Name      ProtectionState RpcProtectionState
--------- ------------------- ------     --           ----------------------- ----      --------------- ------------------
2         False               posh.local a:a:JF2xro6g 1                       DC01      5               1
2         False               posh.local a:a:wmw7t9vI 1                       FS01      5               1
2         False               posh.local a:a:e7XtRE2C 1                       FS02      5               1
3         False               posh.local a:a:MnszuWV1 1                       fsCluster 1               1
0         False               posh.local a:a:EzbcAdb7 1                       LA01      1               1
3         False               posh.local a:a:6kj1DxFZ 1                       share     1               1
2         False               posh.local a:a:yhPm6ByM 1                       SS01      1               1
1         False               posh.local a:a:o8w4Bpq7 1                       WC01      3               1
```

This cmdlet gets mirror candidates.

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

### -Limit
Limit the return results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Offset
Used to page through results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Search
Test to search for

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetBasicInfoList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znassetotmirrorcandidate
schema: 2.0.0
---

# Get-ZNAssetOtMirrorCandidate

## SYNOPSIS
Get mirror candidates

## SYNTAX

```
Get-ZNAssetOtMirrorCandidate -AssetId <String> [-AccountName <String>] [-Limit <Int32>] [-Offset <Int32>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Get mirror candidates

## EXAMPLES

### Example 1: Get mirror candidates
```powershell
Get-ZNAssetOtMirrorCandidate -AssetId a:t:BPFR4ZlN
```

```output
AssetType BreakGlassActivated Domain Id           IdentityProtectionState Name     ProtectionState RpcProtectionSta
                                                                                                   te
--------- ------------------- ------ --           ----------------------- ----     --------------- ----------------
5         False                      a:t:BPFR4ZlN 1                       activeOT 1               1
4         False                      a:t:o0AARV78 1                       otv1     1               1
22        False                      a:t:ffPDi031 1                       otv2     1               1
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


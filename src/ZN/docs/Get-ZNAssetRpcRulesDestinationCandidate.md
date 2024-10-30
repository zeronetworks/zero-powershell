---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetrpcrulesdestinationcandidate
schema: 2.0.0
---

# Get-ZNAssetRpcRulesDestinationCandidate

## SYNOPSIS
Returns a list of destination candidates for RPC rules.

## SYNTAX

```
Get-ZNAssetRpcRulesDestinationCandidate -AssetId <String> [-AccountName <String>] [-Cursor <Int64>]
 [-Limit <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of destination candidates for RPC rules.

## EXAMPLES

### Example 1: Get destination candidates for an rpc rule for a specific asset
```powershell
(Get-ZNAssetRpcRulesDestinationCandidate -AssetId 'a:t:itN4uaLX').Items
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
                               b:113002     All RPC segmented assets
                               b:113004     All RPC segmented servers
                               b:113005     All RPC segmented clients
posh.local False               g:a:rZl537o4 Access Control Assistance Operators
posh.local False               g:a:V9kshIRu Account Operators
posh.local False               g:a:Q4IYhlTC Administrators
posh.local False               g:a:OtwDATUK Allowed RODC Password Replication Group
posh.local False               g:a:3AFg9RPE Backup Operators
posh.local False               g:a:eSfiOaM0 Certificate Service DCOM Access
posh.local False               g:a:Qx5wSzxi Cert Publishers
system     False               g:s:29669ce2 Client subnets
posh.local False               g:a:leHDIXAw Cloneable Domain Controllers
posh.local False               g:a:jF0PdFzE Cryptographic Operators
posh.local                     a:a:VWW2G2C8 dc01
posh.local                     a:a:sMnd5NkL ts01
posh.local                     a:a:GLUxqjgc wac01
posh.local                     a:a:A6PSKQXP ZADCOMP1
posh.local                     a:a:fAloyhrG ZADCOMP10
posh.local                     a:a:v9j71uhH ZADCOMP2
posh.local                     a:a:DOFtbyLr ZADCOMP3
posh.local                     a:a:BfAzS2Uc ZADCOMP4
posh.local                     a:a:4wiNkC9Z ZADCOMP5
posh.local                     a:a:CO4vV7R7 ZADCOMP6
```

This cmdlet gets the possible destination candidates for a rpc rule for a specific asset.

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

### -Cursor
cursor position to start at

```yaml
Type: System.Int64
Parameter Sets: (All)
Aliases:

Required: False
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ICandidatesList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


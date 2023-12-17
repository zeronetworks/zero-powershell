---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetmfaoutboundpoliciesmfamethod
schema: 2.0.0
---

# Get-ZNAssetMfaOutboundPoliciesMfamethod

## SYNOPSIS
Returns a list of MFA methods on outbound MFA policies.

## SYNTAX

```
Get-ZNAssetMfaOutboundPoliciesMfamethod -AssetId <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of MFA methods on outbound MFA policies.

## EXAMPLES

### Example 1: List MFA methods for outbound MFA policy for a specific asset.
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
Get-ZNAssetMfaOutboundPoliciesMfamethod -AssetId $asset        
1
2
4
5
```

This cmdlet lists the MFA methods for an outbound MFA policy for a specific asset.

## PARAMETERS

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

### System.Int32

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


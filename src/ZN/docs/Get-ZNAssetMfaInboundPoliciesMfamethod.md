---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetmfainboundpoliciesmfamethod
schema: 2.0.0
---

# Get-ZNAssetMfaInboundPoliciesMfamethod

## SYNOPSIS
Returns a list of MFA methods for inbound MFA policies.

## SYNTAX

```
Get-ZNAssetMfaInboundPoliciesMfamethod -AssetId <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of MFA methods for inbound MFA policies.

## EXAMPLES

### Example 1: List MFA methods for inbound MFA policy for a specific asset.
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
Get-ZNAssetMfaInboundPoliciesMfamethod -AssetId $asset        
```

```output
1
2
4
5
```

This cmdlet lists the MFA methods for an inbound MFA policy for a specific asset.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IReactivePolicyMethods

## NOTES

## RELATED LINKS


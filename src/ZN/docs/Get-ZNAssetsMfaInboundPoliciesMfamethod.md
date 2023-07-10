---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetsmfainboundpoliciesmfamethod
schema: 2.0.0
---

# Get-ZNAssetsMfaInboundPoliciesMfamethod

## SYNOPSIS
Returns a list of MFA methods for inbound MFA policies.

## SYNTAX

```
Get-ZNAssetsMfaInboundPoliciesMfamethod -AssetId <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of MFA methods for inbound MFA policies.

## EXAMPLES

### Example 1: List possible MFA methods for an inbound MFA policy for a specific asset
```powershell
Get-ZNAssetsMfaInboundPoliciesMfamethod -AssetId 'a:a:OtfLGUBq'
```

```output
1
2
3
4
5
```

This cmdlet will return the possible MFA methods for an inbound MFA policy.
The values are mapped to:
1 = SMS
2 = Email
3 = Duo Push
4 = Browser
5 = No MFA

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

ALIASES

## RELATED LINKS


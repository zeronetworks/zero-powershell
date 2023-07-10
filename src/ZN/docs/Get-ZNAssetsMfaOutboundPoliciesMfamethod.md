---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetsmfaoutboundpoliciesmfamethod
schema: 2.0.0
---

# Get-ZNAssetsMfaOutboundPoliciesMfamethod

## SYNOPSIS
Returns a list of MFA methods on outbound MFA policies.

## SYNTAX

```
Get-ZNAssetsMfaOutboundPoliciesMfamethod -AssetId <String> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of MFA methods on outbound MFA policies.

## EXAMPLES

### Example 1: List possible MFA methods for an outbound MFA policy for a specific policy
```powershell
Get-ZNAssetsMfaOutboundPoliciesMfamethod -AssetId 'a:a:OtfLGUBq'
```

```output
1
2
3
4
5
```

This cmdlet will return the possible MFA methods for an outbound MFA policy.
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


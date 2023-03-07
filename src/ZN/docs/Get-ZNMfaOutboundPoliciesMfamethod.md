---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znmfaoutboundpoliciesmfamethod
schema: 2.0.0
---

# Get-ZNMfaOutboundPoliciesMfamethod

## SYNOPSIS
Returns a list of MFA methods on outbound MFA policies.

## SYNTAX

```
Get-ZNMfaOutboundPoliciesMfamethod [<CommonParameters>]
```

## DESCRIPTION
Returns a list of MFA methods on outbound MFA policies.

## EXAMPLES

### Example 1: List possible MFA methods for an outbound MFA policy
```powershell
Get-ZNMfaOutboundPoliciesMfamethod
```

```output
2
4
3
5
1
```

This cmdlet will return the possible MFA methods for an outbound MFA policy.
The values are mapped to:
1 = SMS
2 = Email
3 = Duo Push
4 = Browser
5 = No MFA

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Int32

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS


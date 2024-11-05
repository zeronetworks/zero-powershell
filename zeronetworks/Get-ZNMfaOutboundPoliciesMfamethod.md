---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znmfaoutboundpoliciesmfamethod
schema: 2.0.0
---

# Get-ZNMfaOutboundPoliciesMfamethod

## SYNOPSIS
Returns a list of MFA methods on outbound MFA policies.

## SYNTAX

```
Get-ZNMfaOutboundPoliciesMfamethod [-AccountName <String>] [<CommonParameters>]
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IReactivePolicyMethods

## NOTES

## RELATED LINKS


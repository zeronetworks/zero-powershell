---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znmfaidentitypoliciesmfamethod
schema: 2.0.0
---

# Get-ZNMfaIdentityPoliciesMfamethod

## SYNOPSIS
Returns a list of MFA methods for Identity MFA policies.

## SYNTAX

```
Get-ZNMfaIdentityPoliciesMfamethod [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of MFA methods for Identity MFA policies.

## EXAMPLES

### Example 1: Get Identity MFA Methods
```powershell
Get-ZNMfaIdentityPoliciesMfamethod
```

```output
2
4
5
```

This cmdlet gets MFA methods for Identity MFA.

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


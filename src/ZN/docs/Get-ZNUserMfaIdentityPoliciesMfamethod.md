---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znusermfaidentitypoliciesmfamethod
schema: 2.0.0
---

# Get-ZNUserMfaIdentityPoliciesMfamethod

## SYNOPSIS
Returns a list of MFA methods for Identity MFA policies.

## SYNTAX

```
Get-ZNUserMfaIdentityPoliciesMfamethod -UserId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of MFA methods for Identity MFA policies.

## EXAMPLES

### Example 1: List Identity MFA methods
```powershell
Get-ZNUserMfaIdentityPoliciesMfamethod -UserId $userId
```

```output
2
4
5
```

This cmdlet lists MFA methods for Identity MFA.

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

### -UserId
userId to filter on

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


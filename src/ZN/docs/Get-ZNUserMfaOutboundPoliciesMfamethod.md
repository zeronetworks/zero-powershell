---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znusermfaoutboundpoliciesmfamethod
schema: 2.0.0
---

# Get-ZNUserMfaOutboundPoliciesMfamethod

## SYNOPSIS
Returns a list of MFA methods on outbound MFA policies.

## SYNTAX

```
Get-ZNUserMfaOutboundPoliciesMfamethod -UserId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of MFA methods on outbound MFA policies.

## EXAMPLES

### Example 1: List MFA methods for a MFA policy
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
Get-ZNUserMfaOutboundPoliciesMfamethod -UserId $user.id
```

```output
5
2
4
```

This cmdlet lists MFA methods for an MFA policy.

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


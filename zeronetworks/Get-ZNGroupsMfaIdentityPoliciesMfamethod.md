---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-zngroupsmfaidentitypoliciesmfamethod
schema: 2.0.0
---

# Get-ZNGroupsMfaIdentityPoliciesMfamethod

## SYNOPSIS
Returns a list of MFA methods for Identity MFA policies.

## SYNTAX

```
Get-ZNGroupsMfaIdentityPoliciesMfamethod -GroupId <String> -GroupType <String> [-AccountName <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of MFA methods for Identity MFA policies.

## EXAMPLES

### Example 1: Get Identity MFA Methods
```powershell
$group = (Get-ZNGroup -Search "Domain controllers").Items | where {$_.Domain -eq "tag"}Get-ZNGroupsMfaIdentityPoliciesMfamethod -Groupid $group.id -GroupType tag
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

### -GroupId
groupId to filter on

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

### -GroupType
group type to filter on

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


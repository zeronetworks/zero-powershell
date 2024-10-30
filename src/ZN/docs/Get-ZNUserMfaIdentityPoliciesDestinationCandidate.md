---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znusermfaidentitypoliciesdestinationcandidate
schema: 2.0.0
---

# Get-ZNUserMfaIdentityPoliciesDestinationCandidate

## SYNOPSIS
Returns a list of candidates for the destination of an identity MFA policy.

## SYNTAX

```
Get-ZNUserMfaIdentityPoliciesDestinationCandidate -UserId <String> [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of candidates for the destination of an identity MFA policy.

## EXAMPLES

### Example 1: List Identity MFA destination candidates
```powershell
$userId = "u:a:jRVryncp"
(Get-ZNUserMfaIdentityPoliciesDestinationCandidate -UserId $userid).Items
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
                               b:112002     All identity segmented assets
                               b:112004     All identity segmented servers
                               b:112005     All identity segmented clients
posh.local False               g:a:rZl537o4 Access Control Assistance Operators
posh.local False               g:a:V9kshIRu Account Operators
posh.local False               g:a:Q4IYhlTC Administrators
posh.local False               g:a:OtwDATUK Allowed RODC Password Replication Group
                               a:n:3Odw9d40 as01
posh.local False               g:a:3AFg9RPE Backup Operators
posh.local False               g:a:eSfiOaM0 Certificate Service DCOM Access
posh.local False               g:a:Qx5wSzxi Cert Publishers
system     False               g:s:29669ce2 Client subnets
posh.local False               g:a:leHDIXAw Cloneable Domain Controllers
```

This cmdlet lists destination candidates for Identity MFA.

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

### -Limit
Limit the return results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Offset
Used to page through results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Search
Test to search for

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ICandidatesList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


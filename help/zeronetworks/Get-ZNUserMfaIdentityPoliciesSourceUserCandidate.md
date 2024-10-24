---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znusermfaidentitypoliciessourceusercandidate
schema: 2.0.0
---

# Get-ZNUserMfaIdentityPoliciesSourceUserCandidate

## SYNOPSIS
Returns a list of source user candidates for Identity MFA policies.

## SYNTAX

```
Get-ZNUserMfaIdentityPoliciesSourceUserCandidate -UserId <String> [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of source user candidates for Identity MFA policies.

## EXAMPLES

### Example 1: List Identity MFA source user candidates
```powershell
$userId = "u:a:jRVryncp"
(Get-ZNUserMfaIdentityPoliciesSourceUserCandidate -UserId $userid).Items
```

```output
Domain     Id           Name
------     --           ----
           b:111001     Any user
posh.local g:a:rZl537o4 Access Control Assistance Operators
posh.local g:a:V9kshIRu Account Operators
posh.local g:a:Q4IYhlTC Administrators
posh.local g:a:OtwDATUK Allowed RODC Password Replication Group
posh.local g:a:3AFg9RPE Backup Operators
posh.local g:a:eSfiOaM0 Certificate Service DCOM Access
posh.local g:a:Qx5wSzxi Cert Publishers
posh.local g:a:leHDIXAw Cloneable Domain Controllers
posh.local g:a:jF0PdFzE Cryptographic Operators
posh.local g:a:PHBjR5mL Denied RODC Password Replication Group
system     g:s:81669ce2 Zero Networks Admins
system     g:s:83669ce2 Zero Networks Operators
system     g:s:82669ce2 Zero Networks Viewers
```

This cmdlet lists source user candidates for Identity MFA.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISrcUserCandidatesList

## NOTES

## RELATED LINKS


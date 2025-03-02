---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znmfaidentitypoliciesexcludedsourcecandidate
schema: 2.0.0
---

# Get-ZNMfaIdentityPoliciesExcludedSourceCandidate

## SYNOPSIS
Returns a list of candidates for the excluded sources of an Identity MFA policy.

## SYNTAX

```
Get-ZNMfaIdentityPoliciesExcludedSourceCandidate [-AccountName <String>] [-IsSrcAssetUnmonitored]
 [-Limit <Int32>] [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of candidates for the excluded sources of an Identity MFA policy.

## EXAMPLES

### Example 1: Get Identity MFA Excluded Source Candidates
```powershell
(Get-ZNMfaIdentityPoliciesExcludedSourceCandidate).Items
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
posh.local               False g:a:rZl537o4 Access Control Assistance Operators
posh.local               False g:a:V9kshIRu Account Operators
posh.local               False g:a:Q4IYhlTC Administrators
posh.local               False g:a:OtwDATUK Allowed RODC Password Replication Group
                               a:n:3Odw9d40 as01
posh.local               False g:a:3AFg9RPE Backup Operators
posh.local               False g:a:eSfiOaM0 Certificate Service DCOM Access
posh.local               False g:a:Qx5wSzxi Cert Publishers
system                   False g:s:04669ce2 Clients
system                   False g:s:29669ce2 Client subnets
```

This cmdlet gets excluded source candidates for Identity MFA.

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

### -IsSrcAssetUnmonitored
filter for unmonitored sources

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ICandidatesList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


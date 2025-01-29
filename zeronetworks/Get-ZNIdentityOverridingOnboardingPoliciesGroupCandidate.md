---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znidentityoverridingonboardingpoliciesgroupcandidate
schema: 2.0.0
---

# Get-ZNIdentityOverridingOnboardingPoliciesGroupCandidate

## SYNOPSIS
Returns a list of candidates for identity overriding onboarding policies.

## SYNTAX

```
Get-ZNIdentityOverridingOnboardingPoliciesGroupCandidate [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of candidates for identity overriding onboarding policies.

## EXAMPLES

### Example 1: List group candidates for overriding onboarding policy
```powershell
(Get-ZNIdentityOverridingOnboardingPoliciesGroupCandidate).Items
```

```output
Id           Name                                    Domain
--           ----                                    ------
g:a:SMNYUVPK Access Control Assistance Operators     posh.local
g:a:ygWshrUK Account Operators                       posh.local
g:a:vDSBhdKu Administrators                          posh.local
g:a:lCM1TULR Allowed RODC Password Replication Group posh.local
g:s:28741a05 Any except trusted Internet             system
g:a:vRjsI4Re Backup Operators                        posh.local
g:a:Wuqi52A3 Certificate Service DCOM Access         posh.local
g:a:eHxbptyg Cert Publishers                         posh.local
g:s:04741a05 Clients                                 system
g:a:YKAUh2xA Cloneable Domain Controllers            posh.local
```

This cmdlet lists group candidates for overriding onboarding policy.

### Example 2: Search for a candidate
```powershell
(Get-ZNIdentityOverridingOnboardingPoliciesGroupCandidate -Search clients).Items
```

```output
Id           Name                      Domain
--           ----                      ------
g:s:04741a05 Clients                   system
g:t:5U741a05 Externally facing clients tag
```

This cmdlet can search for a group using the search parameter.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IGroupCandidatesList

## NOTES

## RELATED LINKS


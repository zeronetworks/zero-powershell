---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znidentityonboardingpolicy
schema: 2.0.0
---

# Get-ZNIdentityOnboardingPolicy

## SYNOPSIS
Returns a list of identity onboarding policies.

## SYNTAX

```
Get-ZNIdentityOnboardingPolicy [-AccountName <String>] [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of identity onboarding policies.

## EXAMPLES

### Example 1: List candidates for identity onboarding policies
```powershell
(Get-ZNIdentityOnboardingPoliciesGroupCandidate).Items
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
posh.local                     g:a:2mkAN4DS Domain Computers
posh.local                     g:a:3AFg9RPE Backup Operators
posh.local                     g:a:3npP67jr Windows Authorization Access Group
posh.local                     g:a:3U1Z38mF Domain Admins
posh.local                     g:a:7tzfiueO DnsAdmins
posh.local                     g:a:81Tnx8va Pre-Windows 2000 Compatible Access
posh.local                     g:a:8ajEi4UV Domain Guests
posh.local                     g:a:AcuMXaSY RAS and IAS Servers
posh.local                     g:a:ApakNovN Domain Controllers
posh.local                     g:a:BaWTMSoa Guests
```

This cmdlet lists candidates for identity onboarding policies.

### Example 2: Search for a candidate for identity onboarding policies
```powershell
(Get-ZNIdentityOnboardingPoliciesGroupCandidate -Search Servers).Items
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
posh.local                     g:a:AcuMXaSY RAS and IAS Servers
posh.local                     g:a:DkSpCxPu RDS Endpoint Servers
posh.local                     g:a:npRV5X4F RDS Management Servers
posh.local                     g:a:W2iRFLTg RDS Remote Access Servers
posh.local                     g:a:wklutzfZ Terminal Server License Servers
system                         g:s:01669ce2 Segment servers
system                         g:s:03669ce2 Servers
tag                            g:t:5V669ce2 Externally facing servers
```

This cmdlet also allows searching for a group name.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IProtectionPoliciesList

## NOTES

## RELATED LINKS


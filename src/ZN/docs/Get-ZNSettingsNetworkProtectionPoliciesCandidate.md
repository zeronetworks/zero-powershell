---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsnetworkprotectionpoliciescandidate
schema: 2.0.0
---

# Get-ZNSettingsNetworkProtectionPoliciesCandidate

## SYNOPSIS
Returns a list of candidates for a network protection policy.

## SYNTAX

```
Get-ZNSettingsNetworkProtectionPoliciesCandidate [-Limit <Int32>] [-Offset <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of candidates for a network protection policy.

## EXAMPLES

### Example 1: List candidates for Network segmentation policies
```powershell
(Get-ZNSettingsNetworkProtectionPoliciesCandidate).Items
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

This cmdlet lists candidates for Network segmentation policies.

## PARAMETERS

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
Default value: None
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


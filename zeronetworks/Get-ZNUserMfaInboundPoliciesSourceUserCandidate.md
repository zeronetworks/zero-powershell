---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znusermfainboundpoliciessourceusercandidate
schema: 2.0.0
---

# Get-ZNUserMfaInboundPoliciesSourceUserCandidate

## SYNOPSIS
Returns a list of source user candidates for inbound MFA policies.

## SYNTAX

```
Get-ZNUserMfaInboundPoliciesSourceUserCandidate -UserId <String> [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of source user candidates for inbound MFA policies.

## EXAMPLES

### Example 1: List source user candidates for a MFA policy
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
(Get-ZNUserMfaInboundPoliciesSourceUserCandidate -UserId $user.id).Items
```

```output
Id           Name                                    Domain
--           ----                                    ------
b:111001     Any user                                
g:a:5C0h1yd5 Access Control Assistance Operators     posh.local
g:a:HJWKrlHo Account Operators                       posh.local
u:d:OyGBmU7E AdminAAD                                Entra ID (Azure AD)
g:a:HBWuhIUi Administrators                          posh.local
g:a:9vY3VFbm Allowed RODC Password Replication Group posh.local
g:a:exFKiv8f Backup Operators                        posh.local
g:a:MXf0RYFl Certificate Service DCOM Access         posh.local
g:a:yqC1KYpY Cert Publishers                         posh.local
g:a:4SxDUPd8 Cloneable Domain Controllers            posh.local
g:a:GFjfKrnr Cryptographic Operators                 posh.local
g:s:81da83cd Zero Networks Admins                    system
g:s:83da83cd Zero Networks Operators                 system
g:s:82da83cd Zero Networks Viewers                   system
```

This cmdlet lists source user candidates for an MFA policy.

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


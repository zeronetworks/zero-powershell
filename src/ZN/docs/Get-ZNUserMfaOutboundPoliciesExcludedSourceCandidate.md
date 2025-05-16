---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znusermfaoutboundpoliciesexcludedsourcecandidate
schema: 2.0.0
---

# Get-ZNUserMfaOutboundPoliciesExcludedSourceCandidate

## SYNOPSIS
Returns a list of candidates for the excluded sources of an outbound MFA policy.

## SYNTAX

```
Get-ZNUserMfaOutboundPoliciesExcludedSourceCandidate -UserId <String> [-AccountName <String>]
 [-IsSrcAssetUnmonitored] [-Limit <Int32>] [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of candidates for the excluded sources of an outbound MFA policy.

## EXAMPLES

### Example 1: List excluded source candidates for a MFA policy
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
(Get-ZNUserMfaOutboundPoliciesExcludedSourceCandidate -UserId $user.id).Items
```

```output
Id           Name                                    Domain
--           ----                                    ------
g:a:5C0h1yd5 Access Control Assistance Operators     posh.local
g:a:HJWKrlHo Account Operators                       posh.local
g:a:HBWuhIUi Administrators                          posh.local
a:n:c9PBr848 al01                                    
g:a:9vY3VFbm Allowed RODC Password Replication Group posh.local
g:a:exFKiv8f Backup Operators                        posh.local
a:n:wO7YvV5m bdf027316245                            
a:n:1ixx7otO c365acdfdff3                            
g:a:MXf0RYFl Certificate Service DCOM Access         posh.local
g:a:yqC1KYpY Cert Publishers                         posh.local
```

This cmdlet lists excluded source candidates for an MFA policy.

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


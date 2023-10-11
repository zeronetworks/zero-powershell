---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znmfainboundpoliciessourcecandidate
schema: 2.0.0
---

# Get-ZNMfaInboundPoliciesSourceCandidate

## SYNOPSIS
Returns a list of source candidates on inbound MFA policies.

## SYNTAX

```
Get-ZNMfaInboundPoliciesSourceCandidate [-Limit <Int32>] [-Offset <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of source candidates on inbound MFA policies.

## EXAMPLES

### Example 1: Get possible sources for inbound MFA Policy
```powershell
(Get-ZNMfaInboundPoliciesSourceCandidate).Items
AssetType Domain    Id           Name                                    ProtectionState
--------- ------    --           ----                                    ---------------
                    b:110001     Any asset                               
                    b:110006     Unmonitored assets                      
          zero.labs g:a:yu1gHyge Access Control Assistance Operators     
          zero.labs g:a:LXwCiIyG Account Operators                       
          tag       g:t:32276c2c Acronis backup                          
          zero.labs g:a:ukYAIg2J Administrators                          
          zero.labs g:a:zpYqGY8G Allowed RODC Password Replication Group 
          tag       g:t:10276c2c Asset management                        
          zero.labs g:a:GqUGqkiM Backup Operators                        
          tag       g:t:23276c2c Backup servers                          
          tag       g:t:37276c2c Certificate Authority                   
          zero.labs g:a:zobH4QmN Certificate Service DCOM Access         
2         zero.labs a:a:ZgBWOMyc DC1                                     5
2         zero.labs a:a:GnyWAsYs FS1                                     3
2         zero.labs a:a:EP2KKITZ TRUST1                                  3
1         zero.labs a:a:6BokfBbU WIN10-1                                 3
1         zero.labs a:a:HYZhxRzI WIN10-2                                 3
1         zero.labs a:a:qnRgyRA9 WIN10-3                                 3
1         zero.labs a:a:5wiknOhs WIN7                                    3
1         zero.labs a:a:cxIJepiA win8-1                                  3
```

This cmdlet will return possbile candidates for sources in an inbound MFA policy.

### Example 2: Search for a candidate
```powershell
(Get-ZNMfaInboundPoliciesSourceCandidate -Search DC1).Items
AssetType Domain    Id           Name ProtectionState
--------- ------    --           ---- ---------------
2         zero.labs a:a:ZgBWOMyc DC1  5
```

To find a specific candidate use the search parameter with the Name to be searched.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ICandidatesList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS


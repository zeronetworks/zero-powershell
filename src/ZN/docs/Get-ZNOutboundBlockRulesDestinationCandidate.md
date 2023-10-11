---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znoutboundblockrulesdestinationcandidate
schema: 2.0.0
---

# Get-ZNOutboundBlockRulesDestinationCandidate

## SYNOPSIS
Returns a list of destioantion candidates for outbound block rules.

## SYNTAX

```
Get-ZNOutboundBlockRulesDestinationCandidate [-Cursor <Int64>] [-Limit <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of destioantion candidates for outbound block rules.

## EXAMPLES

### Example 1: Get possible destinations for outbound block rule
```powershell
(Get-ZNOutboundBlockRulesDestinationCandidate).Items
AssetType Domain    Id           Name                                    ProtectionState
--------- ------    --           ----                                    ---------------
          zero.labs g:a:yu1gHyge Access Control Assistance Operators     
          zero.labs g:a:LXwCiIyG Account Operators                       
          zero.labs g:a:ukYAIg2J Administrators                          
          zero.labs g:a:zpYqGY8G Allowed RODC Password Replication Group 
          zero.labs g:a:GqUGqkiM Backup Operators                        
          zero.labs g:a:zobH4QmN Certificate Service DCOM Access         
          zero.labs g:a:v7HrWzxU Cert Publishers                         
          zero.labs g:a:Ddd1JHS6 Cloneable Domain Controllers            
          zero.labs g:a:vo645q5C Cryptographic Operators                 
2         zero.labs a:a:ZgBWOMyc DC1                                     10
          zero.labs g:a:mn0S6UED Denied RODC Password Replication Group  
2         zero.labs a:a:GnyWAsYs FS1                                     3
0                   a:l:YjoLaKRG linuxserver                             1
2         zero.labs a:a:EP2KKITZ TRUST1                                  3
1         zero.labs a:a:6BokfBbU WIN10-1                                 3
1         zero.labs a:a:HYZhxRzI WIN10-2                                 3
1         zero.labs a:a:qnRgyRA9 WIN10-3                                 3
1         zero.labs a:a:5wiknOhs WIN7                                    5
1         zero.labs a:a:cxIJepiA win8-1                                  3
```

This cmdlet will return possbile candidates for destinations in an outbound block rule.

### Example 2: Search for a candidate
```powershell
(Get-ZNOutboundBlockRulesDestinationCandidate -Search DC1).Items
AssetType Domain    Id           Name ProtectionState
--------- ------    --           ---- ---------------
2         zero.labs a:a:ZgBWOMyc DC1  5
```

To find a specific candidate use the search parameter with the Name to be searched.

## PARAMETERS

### -Cursor
cursor position to start at

```yaml
Type: System.Int64
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


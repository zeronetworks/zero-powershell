---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/get-znsegmentoutboundblockrulesdestinationcandidate
schema: 2.0.0
---

# Get-ZNSegmentOutboundBlockRulesDestinationCandidate

## SYNOPSIS
Get destination assets for outbound block

## SYNTAX

```
Get-ZNSegmentOutboundBlockRulesDestinationCandidate [-Cursor <Int64>] [-Limit <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Get destination assets for outbound block

## EXAMPLES

### Example 1: Get possible destinations for outbound block rule
```powershell
(Get-ZNSegmentOutboundBlockRulesDestinationCandidate).Items
```

```output
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
(Get-ZNSegmentOutboundBlockRulesDestinationCandidate -Search DC1).Items
```

```output
AssetType Domain    Id           Name ProtectionState
--------- ------    --           ---- ---------------
2         zero.labs a:a:ZgBWOMyc DC1  5
```

To find a specific candidate use the search parameter with the Name to be searched.

## PARAMETERS

### -Cursor
cursor position to start at epoch(ms)

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
.

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
.

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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IApiError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.ICandidatesList

## NOTES

ALIASES

## RELATED LINKS


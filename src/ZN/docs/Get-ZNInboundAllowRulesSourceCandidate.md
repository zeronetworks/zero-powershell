---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/get-zninboundallowrulessourcecandidate
schema: 2.0.0
---

# Get-ZNInboundAllowRulesSourceCandidate

## SYNOPSIS
Returns a list of source candidates for Inbound Allow rules.

## SYNTAX

```
Get-ZNInboundAllowRulesSourceCandidate [-Cursor <Int64>] [-Limit <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of source candidates for Inbound Allow rules.

## EXAMPLES

### Example 1: Find candidates for inbound allow rule sources
```powershell
(Get-ZNInboundAllowRulesSourceCandidate).Items
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

This cmdlet will list source candidates for an inbound allow rule in the environment.

### Example 2: Search for an inbound allow rule source
```powershell
(Get-ZNInboundAllowRulesSourceCandidate -Search "FS1").Items
```

```output
AssetType Domain    Id           Name ProtectionState
--------- ------    --           ---- ---------------
2         zero.labs a:a:GnyWAsYs FS1  3
```

Find a source candidate for an inbound allow rule by search.

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

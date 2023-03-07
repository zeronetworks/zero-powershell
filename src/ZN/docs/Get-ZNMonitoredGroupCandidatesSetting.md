---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znmonitoredgroupcandidatessetting
schema: 2.0.0
---

# Get-ZNMonitoredGroupCandidatesSetting

## SYNOPSIS
Get the monitored group candidates

## SYNTAX

```
Get-ZNMonitoredGroupCandidatesSetting [-Limit <Int32>] [-Offset <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Get the monitored group candidates

## EXAMPLES

### Example 1: Get possible candidates for Asset Monitoring Control
```powershell
(Get-ZNMonitoredGroupCandidatesSetting).Items
```

```output
omain    HasProtectionPolicy Id           Name
------    ------------------- --           ----
                              b:110003     All AD assets
zero.labs False               g:a:yu1gHyge Access Control Assistance Operators
zero.labs False               g:a:LXwCiIyG Account Operators
zero.labs False               g:a:ukYAIg2J Administrators
zero.labs False               g:a:zpYqGY8G Allowed RODC Password Replication Group
zero.labs False               g:a:GqUGqkiM Backup Operators
zero.labs False               g:a:zobH4QmN Certificate Service DCOM Access
zero.labs False               g:a:v7HrWzxU Cert Publishers
zero.labs False               g:a:Ddd1JHS6 Cloneable Domain Controllers
zero.labs False               g:a:vo645q5C Cryptographic Operators
zero.labs False               g:a:mn0S6UED Denied RODC Password Replication Group
```

This cmdlet will return possbile candidates for Asset Monitoring control.

### Example 2: Search for a candidate
```powershell
(Get-ZNMonitoredGroupCandidatesSetting -Search "All AD Assets").Items
```

```output
Domain HasProtectionPolicy Id       Name
------ ------------------- --       ----
                           b:110003 All AD assets
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IGroupCandidatesList

## NOTES

ALIASES

## RELATED LINKS


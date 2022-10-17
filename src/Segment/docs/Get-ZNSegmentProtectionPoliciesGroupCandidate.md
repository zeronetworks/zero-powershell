---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/get-znsegmentprotectionpoliciesgroupcandidate
schema: 2.0.0
---

# Get-ZNSegmentProtectionPoliciesGroupCandidate

## SYNOPSIS
Get groups for protection policy

## SYNTAX

```
Get-ZNSegmentProtectionPoliciesGroupCandidate [-Limit <Int32>] [-Offset <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Get groups for protection policy

## EXAMPLES

### Example 1: List candidates for protection policies
```powershell
Get-ZNSegmentProtectionPoliciesGroupCandidate).Items
```

```output
(Get-ZNSegmentProtectionPoliciesGroupCandidate).Items

Domain    HasProtectionPolicy Id           Name
------    ------------------- --           ----
zero.labs False               g:a:yu1gHyge Access Control Assistance Operators
zero.labs False               g:a:LXwCiIyG Account Operators
tag       False               g:t:32276c2c Acronis backup
zero.labs False               g:a:ukYAIg2J Administrators
zero.labs False               g:a:zpYqGY8G Allowed RODC Password Replication Group
tag       False               g:t:10276c2c Asset management
zero.labs False               g:a:GqUGqkiM Backup Operators
tag       False               g:t:23276c2c Backup servers
tag       False               g:t:37276c2c Certificate Authority
zero.labs False               g:a:zobH4QmN Certificate Service DCOM Access
```

The cmdlet gets candidates for protection policies for the environment

### Example 2: Search for a candidate
```powershell
(Get-ZNSegmentProtectionPoliciesGroupCandidate -Search Clients).Items
```

```output
Domain HasProtectionPolicy Id           Name
------ ------------------- --           ----
system False               g:s:04276c2c Clients
```

To find a specific candidate use the search parameter with the Name to be searched.

## PARAMETERS

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

### -Offset
.

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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IGroupCandidatesList

## NOTES

ALIASES

## RELATED LINKS


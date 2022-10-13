---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/get-znsegmentmfaoutboundpoliciessourceusercandidate
schema: 2.0.0
---

# Get-ZNSegmentMfaOutboundPoliciesSourceUserCandidate

## SYNOPSIS
Get source users for outbound MFA policies

## SYNTAX

```
Get-ZNSegmentMfaOutboundPoliciesSourceUserCandidate [-Limit <Int32>] [-Offset <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Get source users for outbound MFA policies

## EXAMPLES

### Example 1: Get possible source users for outbound MFA Policy
```powershell
(Get-ZNSegmentMfaOutboundPoliciesSourceUserCandidate).Items
```

```output
Domain    Id           Name
------    --           ----
          b:111001     Any user
zero.labs g:a:yu1gHyge Access Control Assistance Operators
zero.labs g:a:LXwCiIyG Account Operators
tag       g:t:32276c2c Acronis backup
zero.labs u:a:eTpnZu08 Administrator
zero.labs g:a:ukYAIg2J Administrators
zero.labs g:a:zpYqGY8G Allowed RODC Password Replication Group
zero.labs u:a:iGn4Hiqf Amir Duo
zero.labs u:a:PfGBMNXZ Amir Frankel
system    g:s:18276c2c Any asset except protected OT/IoT devices
tag       g:t:10276c2c Asset management
zero.labs g:a:GqUGqkiM Backup Operators
tag       g:t:23276c2c Backup servers
zero.labs u:a:ILBOlZpe Benny Duo
zero.labs u:a:JinEj0u0 Benny Lakunishok
tag       g:t:37276c2c Certificate Authority
zero.labs u:a:7Fp0hF2k duo account
zero.labs u:a:sJKzqaGn Ema Duo
zero.labs u:a:5bMryabz Emanuele Bianchi
zero.labs u:a:qRcDkgrW Guest
zero.labs u:a:r0HtwNuC krbtgt
```

This cmdlet will return possbile candidates for source users in an outbound MFA policy.

### Example 2: Search for a candidate
```powershell
(Get-ZNSegmentMfaOutboundPoliciesSourceUserCandidate -Search administrator).Items
```

```output
Domain    Id           Name
------    --           ----
zero.labs u:a:eTpnZu08 Administrator
zero.labs g:a:ukYAIg2J Administrators
zero.labs g:a:QYfuTz8B Hyper-V Administrators
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

### System.String

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.ISrcUserCandidatesList

## NOTES

ALIASES

## RELATED LINKS


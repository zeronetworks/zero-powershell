---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-zngroupsassetmanagerscandidate
schema: 2.0.0
---

# Get-ZNGroupsAssetManagersCandidate

## SYNOPSIS
Get manager candidates for group managers

## SYNTAX

```
Get-ZNGroupsAssetManagersCandidate -GroupId <String> -GroupType <String> [-Limit <Int32>] [-Offset <Int32>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Get manager candidates for group managers

## EXAMPLES

### Example 1: List asset manager candidates for a group
```powershell
(Get-ZNGroupsAssetManagersCandidate -Groupid g:t:01445453 -GroupType tag).Items
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
posh.local False               g:a:qu04AfTz Access Control Assistance Operators
posh.local False               g:a:XDRxcVDz Account Operators
posh.local False               g:a:MBAj0Xfx Administrators
posh.local False               g:a:u6xPbBLg Allowed RODC Password Replication Group
posh.local False               g:a:JjhBvgRW Backup Operators
posh.local False               g:a:j4oCHNuP Certificate Service DCOM Access
posh.local False               g:a:YeUXSDi6 Cert Publishers
posh.local                     u:a:r6ZkL5Y0 Guest
custom     False               g:c:a3ULHEya cgroup33184
custom     False               g:c:loCbciM7 cgroup420354
custom     False               g:c:dhbMSNxu cgroup565306
posh.local                     u:a:IiObBkVQ krbtgt
posh.local                     u:a:Tolw5kf6 test
posh.local                     u:a:RVVXGo4w zero
posh.local                     u:a:V61t0gZB ZNRemoteManagement
```

This cmdlet lists asset manager candidates for a group.

## PARAMETERS

### -GroupId
groupId to filter on

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

### -GroupType
group type to filter on

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


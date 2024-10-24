---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-zngroupsrpcrulessourcecandidate
schema: 2.0.0
---

# Get-ZNGroupsRpcRulesSourceCandidate

## SYNOPSIS
Returns a list of source candidates for RPC rules.

## SYNTAX

```
Get-ZNGroupsRpcRulesSourceCandidate -GroupId <String> -GroupType <String> [-AccountName <String>]
 [-Cursor <Int64>] [-Limit <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of source candidates for RPC rules.

## EXAMPLES

### Example 1: Get source candidates for an rpc rule for a specific group
```powershell
(Get-ZNGroupRpcRulesSourceCandidate -GroupType tag -GroupId 'g:t:01669ce2').Items
```

```output
Domain     HasProtectionPolicy Id           Name
------     ------------------- --           ----
                               b:110001     Any asset
posh.local False               g:a:rZl537o4 Access Control Assistance Operators
posh.local False               g:a:V9kshIRu Account Operators
posh.local False               g:a:Q4IYhlTC Administrators
posh.local False               g:a:OtwDATUK Allowed RODC Password Replication Group
posh.local False               g:a:3AFg9RPE Backup Operators
OT/IoT     False               g:o:0T669ce2 Biometric entry systems
OT/IoT     False               g:o:04669ce2 Cameras
OT/IoT     False               g:o:0A669ce2 Card readers
posh.local False               g:a:eSfiOaM0 Certificate Service DCOM Access
posh.local False               g:a:Qx5wSzxi Cert Publishers
                               a:n:3Odw9d40 as01
                               a:l:qFxq3oOt cs01
posh.local                     a:a:VWW2G2C8 dc01
                               a:l:4NMHdoaO linux0
                               a:l:18VODYZg linux1
                               a:l:9TlqfBhM linux_baseit
                               a:n:u5LRZxRq lm01
                               a:l:wEGYa0Cp ls01
                               a:t:gN2vxSX1 ot275354
                               a:t:CXGwcOOZ ot421163
```

This cmdlet gets the possible source candidates for a rpc rule for a specific group.

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

## RELATED LINKS


---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/get-znprotectionautomationcandidatessetting
schema: 2.0.0
---

# Get-ZNProtectionAutomationCandidatesSetting

## SYNOPSIS
Returns a list of candidates for Protection Automation settings.

## SYNTAX

```
Get-ZNProtectionAutomationCandidatesSetting [-Limit <Int32>] [-Offset <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of candidates for Protection Automation settings.

## EXAMPLES

### Example 1: Get possible candidates for Asset Monitoring Control
```powershell
(Get-ZNProtectionAutomationCandidatesSetting).Items
```

```output
Domain    HasProtectionPolicy Id           Name
------    ------------------- --           ----
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

This cmdlet will return possbile candidates for Protection automation under Protection.

### Example 2: Search for a candidate
```powershell
(Get-ZNProtectionAutomationCandidatesSetting -Search "ZeroNetworksProtectedAssets").Items
```

```output
Domain    HasProtectionPolicy Id           Name
------    ------------------- --           ----
zero.labs False               g:a:zPeRnP0P ZeroNetworksProtectedAssets
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


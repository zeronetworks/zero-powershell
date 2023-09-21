---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znaiexclusionsourcecandidate
schema: 2.0.0
---

# Get-ZNAiExclusionSourceCandidate

## SYNOPSIS
Get AI source candidates to ignore during learning.

## SYNTAX

```
Get-ZNAiExclusionSourceCandidate [-Limit <Int32>] [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Get AI source candidates to ignore during learning.

## EXAMPLES

### Example 1: List exclusion candidates for AT settings
```powershell
(Get-ZNAiExclusionSourceCandidate).Items

AssetType Domain Id           Name        ProtectionState
--------- ------ --           ----        ---------------
0                a:l:K5ZTGaUI linux61067  1
0                a:l:i3MbKT4B linux456156 1
0                a:l:Bn5E1jNy linux908049 1
0                a:l:PRsv0HXF linux982753 1
0                a:l:Nhu8SvSE linux294710 1
0                a:l:goXZ3fpT Linux1      1
0                a:l:jnf66dVn Linux3      1
0                a:l:hC8rOTo0 Linux0      1
0                a:l:WHtk9O7L Linux2      1
0                a:l:FB8CBey8 Linux10     1
```

This cmdlet will list candidates for AI exclusion sources.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetCandidateList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS


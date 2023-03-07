---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znaiexclusionsrcentity
schema: 2.0.0
---

# Get-ZNAiExclusionSrcEntity

## SYNOPSIS
Get AI source entities to ignore during learning.

## SYNTAX

```
Get-ZNAiExclusionSrcEntity [<CommonParameters>]
```

## DESCRIPTION
Get AI source entities to ignore during learning.

## EXAMPLES

### Example 1: Get the AI Exclusion Setting for sources
```powershell
Get-ZNAiExclusionSrcEntity
```

```output
AssetType Domain Id           Name        ProtectionState
--------- ------ --           ----        ---------------
0                a:l:YjoLaKRG linuxserver 1
```

This cmdlet returns the AI Exclusion setting for excluded sources under Data Collection.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetBasicInfo

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS


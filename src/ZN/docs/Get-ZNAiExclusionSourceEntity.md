---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znaiexclusionsourceentity
schema: 2.0.0
---

# Get-ZNAiExclusionSourceEntity

## SYNOPSIS
Get AI source entities to ignore during learning.

## SYNTAX

```
Get-ZNAiExclusionSourceEntity [<CommonParameters>]
```

## DESCRIPTION
Get AI source entities to ignore during learning.

## EXAMPLES

### Example 1: Get excluded source entities
```powershell
Get-ZNAiExclusionSourceEntity
```

```output
AssetType Domain     Id           Name ProtectionState
--------- ------     --           ---- ---------------
2         zero.labs a:a:8ErCHXe8 DC01 3
```

This cmdlet lists the excluded source entities for AI settings under Data Collection.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IPaths67UhudSettingsAiExclusionSrcEntitiesGetResponses200ContentApplicationJsonSchema

## NOTES

## RELATED LINKS


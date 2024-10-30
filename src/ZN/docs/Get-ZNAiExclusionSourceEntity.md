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
Get-ZNAiExclusionSourceEntity [-AccountName <String>] [<CommonParameters>]
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IPaths67UhudSettingsAiExclusionSrcEntitiesGetResponses200ContentApplicationJsonSchema

## NOTES

## RELATED LINKS


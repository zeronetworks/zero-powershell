---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znlearningconfig
schema: 2.0.0
---

# Get-ZNLearningConfig

## SYNOPSIS
Get Learning Config

## SYNTAX

```
Get-ZNLearningConfig [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Learning Config

## EXAMPLES

### Example 1: Get learning config
```powershell
Get-ZNLearningConfig
```

```output
AllowQueueForever AllowQuickLearning EnforceBlocksAsDefault
----------------- ------------------ ----------------------
            False              False                  False
```

This cmdet gets the learning config.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsLearningConfig

## NOTES

## RELATED LINKS


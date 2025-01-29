---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znenvironmentslearningconfig
schema: 2.0.0
---

# Get-ZNEnvironmentsLearningConfig

## SYNOPSIS
Get Learning Config

## SYNTAX

```
Get-ZNEnvironmentsLearningConfig [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Learning Config

## EXAMPLES

### Example 1: Get Learning Config
```powershell
Get-ZNEnvironmentsLearningConfig
```

```output
AllowQueueForever AllowQuickLearning EnforceBlocksAsDefault
----------------- ------------------ ----------------------
             True              False                   True
```

This cmdlet gets the learning config.

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


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingslearningwithblocksinbound
schema: 2.0.0
---

# Get-ZNSettingsLearningWithBlocksInbound

## SYNOPSIS
Get the inbound learning with blocks config settings

## SYNTAX

```
Get-ZNSettingsLearningWithBlocksInbound [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get the inbound learning with blocks config settings

## EXAMPLES

### Example 1: Get learning with blocks settings
```powershell
Get-ZNSettingsLearningWithBlocksInbound
```

```output
Ports ProtocolType
----- ------------
               256
```

This cmdlet gets the learning with blocks settings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsLearnWithBlockInbound

## NOTES

## RELATED LINKS


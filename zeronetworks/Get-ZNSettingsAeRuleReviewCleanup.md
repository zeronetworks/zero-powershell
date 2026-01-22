---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsaerulereviewcleanup
schema: 2.0.0
---

# Get-ZNSettingsAeRuleReviewCleanup

## SYNOPSIS
Get AI rules review cleanup settings

## SYNTAX

```
Get-ZNSettingsAeRuleReviewCleanup [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get AI rules review cleanup settings

## EXAMPLES

### Example 1: Get AE Rule cleanup setting
```powershell
Get-ZNSettingsAeRuleReviewCleanup
```

```output
UnusedRulesCleanupState
-----------------------
ON_REVIEW
```

This cmdlet gets the AE rules cleanup setting.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsAeRuleReviewCleanup

## NOTES

## RELATED LINKS


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znainextbatch
schema: 2.0.0
---

# Get-ZNAiNextBatch

## SYNOPSIS
Returns a date in epoch(ms) for the next batch of AI rules.

## SYNTAX

```
Get-ZNAiNextBatch [<CommonParameters>]
```

## DESCRIPTION
Returns a date in epoch(ms) for the next batch of AI rules.

## EXAMPLES

### Example 1: Get the date for the next batch of AI rules creation
```powershell
$aiDate = Get-ZNAiNextBatch
(Get-Date -Date "01-01-1970") + ([System.TimeSpan]::FromMilliseconds($aiDate))
```

```output
Thursday, October 20, 2022 11:59:59 PM
```

The date is stored in epoch(MS).
It can easily be converted to human readable date.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.INextBatch

## NOTES

## RELATED LINKS


---
external help file:
Module Name: ZN.Segment
online version: https://test.comzn.segment/get-znsegmentainextbatch
schema: 2.0.0
---

# Get-ZNSegmentAiNextBatch

## SYNOPSIS
AI Next Batch

## SYNTAX

```
Get-ZNSegmentAiNextBatch [<CommonParameters>]
```

## DESCRIPTION
AI Next Batch

## EXAMPLES

### Example 1: Get the date for the next batch of AI rules creation
```powershell
$aiDate = Get-ZNSegmentAiNextBatch
(Get-Date -Date "01-01-1970") + ([System.TimeSpan]::FromMilliseconds($ai))
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

### System.Int64

### System.String

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

## NOTES

ALIASES

## RELATED LINKS


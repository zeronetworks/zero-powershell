---
external help file:
Module Name: ZN.Segment
online version: https://test.comzn.segment/invoke-znsegmentencodeentityiprange
schema: 2.0.0
---

# Invoke-ZNSegmentEncodeEntityIPRange

## SYNOPSIS
Encode IP range

## SYNTAX

```
Invoke-ZNSegmentEncodeEntityIPRange -IPRange <String> [<CommonParameters>]
```

## DESCRIPTION
Encode IP range

## EXAMPLES

### Example 1: Encode an IP Address range
```powershell
Invoke-ZNSegmentEncodeEntityIPRange -IPRange 1.1.1.1-1.1.1.2 
```

```output
b:120101010120b:140101010101010102
```

This cmdlet encodes an IP Address range to ZNSegement entityId for use in rules and policies.

## PARAMETERS

### -IPRange
.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.String

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

## NOTES

ALIASES

## RELATED LINKS


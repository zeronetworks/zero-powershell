---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/invoke-znsegmentencodeentityip
schema: 2.0.0
---

# Invoke-ZNSegmentEncodeEntityIP

## SYNOPSIS
Encode IP to Asset

## SYNTAX

```
Invoke-ZNSegmentEncodeEntityIP -IP <String> [<CommonParameters>]
```

## DESCRIPTION
Encode IP to Asset

## EXAMPLES

### Example 1: Encode an IP Address
```powershell
Invoke-ZNSegmentEncodeEntityIP -IP 1.1.1.1
```

```output
b:120101010120
```

This cmdlet encodes an IP Address to ZNSegement entityId for use in rules and policies.

## PARAMETERS

### -IP
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


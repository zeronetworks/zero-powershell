---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/invoke-znsegmentencodeentitysubnet
schema: 2.0.0
---

# Invoke-ZNSegmentEncodeEntitySubnet

## SYNOPSIS
Encode IP to Asset

## SYNTAX

```
Invoke-ZNSegmentEncodeEntitySubnet -Subnet <String> [<CommonParameters>]
```

## DESCRIPTION
Encode IP to Asset

## EXAMPLES

### Example 1: Encode an IP subnet range
```powershell
Invoke-ZNSegmentEncodeEntitySubnet -Subnet 1.1.1.0/24 
```

```output
b:120101010018
```

This cmdlet encodes an IP subnet to ZNSegement entityId for use in rules and policies.

## PARAMETERS

### -Subnet
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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IApiError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

## NOTES

ALIASES

## RELATED LINKS


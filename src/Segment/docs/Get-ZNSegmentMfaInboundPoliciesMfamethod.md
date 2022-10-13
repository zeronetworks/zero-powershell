---
external help file:
Module Name: ZN.Segment
online version: https://test.comzn.segment/get-znsegmentmfainboundpoliciesmfamethod
schema: 2.0.0
---

# Get-ZNSegmentMfaInboundPoliciesMfamethod

## SYNOPSIS
Get destination assets for MFA rules

## SYNTAX

```
Get-ZNSegmentMfaInboundPoliciesMfamethod [<CommonParameters>]
```

## DESCRIPTION
Get destination assets for MFA rules

## EXAMPLES

### Example 1: List possible MFA methods for an inbound MFA policy
```powershell
Get-ZNSegmentMfaInboundPoliciesMfamethod
```

```output
2
4
3
5
1
```

This cmdlet will return the possible MFA methods for an inbound MFA policy.

1 = SMS
2 = Email
3 = Duo Push
4 = Browser
5 = No MFA

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Int32

### System.String

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

## NOTES

ALIASES

## RELATED LINKS


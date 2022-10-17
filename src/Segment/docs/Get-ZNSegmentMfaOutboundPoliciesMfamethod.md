---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/get-znsegmentmfaoutboundpoliciesmfamethod
schema: 2.0.0
---

# Get-ZNSegmentMfaOutboundPoliciesMfamethod

## SYNOPSIS
Get MFA methods for outbound policies

## SYNTAX

```
Get-ZNSegmentMfaOutboundPoliciesMfamethod [<CommonParameters>]
```

## DESCRIPTION
Get MFA methods for outbound policies

## EXAMPLES

### Example 1: List possible MFA methods for an outbound MFA policy
```powershell
Get-ZNSegmentMfaOutboundPoliciesMfamethod
```

```output
2
4
3
5
1
```

This cmdlet will return the possible MFA methods for an outbound MFA policy.

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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IApiError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

## NOTES

ALIASES

## RELATED LINKS


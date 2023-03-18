---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znprofile
schema: 2.0.0
---

# Get-ZNProfile

## SYNOPSIS
Get user profile

## SYNTAX

```
Get-ZNProfile [<CommonParameters>]
```

## DESCRIPTION
Get user profile

## EXAMPLES

### Example 1: Get Profile
```powershell
Get-ZNProfile
```

```output
EnvIsTrial                : False
UserActiveEnvironmentId   : 8e71e563-565b-4334-b304-d2d359276c2c
UserActiveEnvironmentName : Zero Networks Demo
UserEmail                 : team@zeronetworks.com
UserFullName              : Zero Networks
UserId                    : 1f352ed0-86f1-454f-90a5-592c197c8000
UserIsExperimental        : True
UserIsInternalUser        : False
UserPhone                 : +0
UserPlatformType          : 5
UserRole                  : 1
UserTenantId              : c576ff07-0f8c-403a-92f7-4c0479b52c4b
UserType                  : 1
```

This cmdlet get the Zero Networks Portal profile.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IProfileResponse

## NOTES

ALIASES

## RELATED LINKS


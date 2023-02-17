---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/get-znansiblesetting
schema: 2.0.0
---

# Get-ZNAnsibleSetting

## SYNOPSIS
Get the Ansible settings in Asset Managment

## SYNTAX

```
Get-ZNAnsibleSetting [<CommonParameters>]
```

## DESCRIPTION
Get the Ansible settings in Asset Managment

## EXAMPLES

### Example 1: Get the Ansible user settings
```powershell
Get-ZNAnsibleSetting
```

```output
ClientId CredentialsName DisableCertificateValidation Url             Username
-------- --------------- ---------------------------- ---             --------
1234     ssh             True                         https://1.1.1.1 znAdmin
```

This cmdlet gets the Linux Ansible User settings under Asset Management.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsAnsible

## NOTES

ALIASES

## RELATED LINKS


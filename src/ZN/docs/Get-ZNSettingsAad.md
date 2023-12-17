---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsaad
schema: 2.0.0
---

# Get-ZNSettingsAad

## SYNOPSIS
Get Azure AD Settings

## SYNTAX

```
Get-ZNSettingsAad [<CommonParameters>]
```

## DESCRIPTION
Get Azure AD Settings

## EXAMPLES

### Example 1: Get AAD settings
```powershell
Get-ZNSettingsAad

ClientId                             ClientSecret TenantId
--------                             ------------ --------
baa75fcd-84ed-4866-8467-db7c74df7aa2              d131b298-ef35-4433-98f7-af0a20369416
```

This cmdlet returns the aad setings.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsAzureAd

## NOTES

## RELATED LINKS


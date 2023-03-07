---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znidpsetting
schema: 2.0.0
---

# Get-ZNIdpSetting

## SYNOPSIS
Get identity provider settings in Identity Providers

## SYNTAX

```
Get-ZNIdpSetting [<CommonParameters>]
```

## DESCRIPTION
Get identity provider settings in Identity Providers

## EXAMPLES

### Example 1: List the Identity Provider Settings
```powershell
Get-ZNIdpSetting | FL
```

```output
Certificate          : MIIDDTCCA....=
CreatedAt            : 2022-03-28T13:54:01.405Z
CreatedBy            : 1f352ed0-86f1-454f-90a5-592c197c8000
IdentityProviderType : duo
IsDefault            : False
SloUrl               : https://sso-....sso.duosecurity.com/saml2/sp/DIZE82R2S6SFZJCDD1CX/sso
SsoUrl               : https://sso-....sso.duosecurity.com/saml2/sp/DIZE82R2S6SFZJCDD1CX/sso
UpdatedAt            : 2022-03-31T08:44:59.035Z
UpdatedBy            : 1f352ed0-86f1-454f-90a5-592c197c8000

Certificate          : MIIC...
CreatedAt            : 2022-03-29T13:44:21.202Z
CreatedBy            : 1f352ed0-86f1-454f-90a5-592c197c8000
IdentityProviderType : azure
IsDefault            : False
SloUrl               : https://login.microsoftonline.com/<tenantGuid>/saml2
SsoUrl               : https://login.microsoftonline.com/<tenantGuid>/saml2
UpdatedAt            : 2022-03-29T13:44:21.202Z
UpdatedBy            : 1f352ed0-86f1-454f-90a5-592c197c8000

Certificate          : MIID...==
CreatedAt            : 2022-03-29T07:37:58.944Z
CreatedBy            : u:a:uM48jiF7
IdentityProviderType : okta
IsDefault            : False
SloUrl               : 
SsoUrl               : https://dev-....okta.com/app/zeronetworks/exk4g8ibd5ReOZqmM5d7/sso/saml
UpdatedAt            : 2022-03-31T10:50:24.490Z
UpdatedBy            : 1f352ed0-86f1-454f-90a5-592c197c8000
```

This cmdlet lists the Identity Provider settings under Integrations.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsIdp

## NOTES

ALIASES

## RELATED LINKS


---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/new-znidpsetting
schema: 2.0.0
---

# New-ZNIdpSetting

## SYNOPSIS
Create an identity provider settings in Identity Providers

## SYNTAX

```
New-ZNIdpSetting -Certificate <String> -IdentityProvider <String> -IsDefault -SloUrl <String> -SsoUrl <String>
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Create an identity provider settings in Identity Providers

## EXAMPLES

### Example 1: Create an Identity Provider setting
```powershell
New-ZNIdpSetting  -IdentityProvider "azure" -SloUrl "https://login.microsoftonline.com/d6eebbdd-d77c-465e-b008-4339027b4006/saml2" -SsoUrl "https://login.microsoftonline.com/d6eebbdd-d77c-465e-b008-4339027b4006/saml2" -IsDefault:$false -Certificate 'MIIC...'
```

```output
Certificate
-----------                                                                                                                                                                                                                                                                       
MIIC8DCCAd...
```

This cmdlet creates a new Identity Provider setting under Integrations.
Allowed values for -IdentityProvider are azure, cyberark, custom, duo, or okta.

## PARAMETERS

### -Certificate
Identity Provider certificate

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

### -IdentityProvider
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

### -IsDefault
Set as the default authentication method

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SloUrl
Single Log out url

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

### -SsoUrl
Single sign on url

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

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsIdp

## NOTES

ALIASES

## RELATED LINKS


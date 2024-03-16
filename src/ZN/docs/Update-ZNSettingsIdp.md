---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/update-znsettingsidp
schema: 2.0.0
---

# Update-ZNSettingsIdp

## SYNOPSIS
Update identity provider settings in Identity Providers

## SYNTAX

```
Update-ZNSettingsIdp -IdentityProviderId <String> [-Certificate <String>] [-IdentityProvider <String>]
 [-IsDefault] [-SloUrl <String>] [-SsoUrl <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Update identity provider settings in Identity Providers

## EXAMPLES

### Example 1: Update Identity Provider
```powershell
$azure = Get-ZNIdpSetting | where {$_.IdentityProviderType -eq "azure"}
Update-ZNIdpSetting -IdentityProviderId $azure.IdentityProviderType -Certificate $azure.Certificate -IdentityProvider $azure.IdentityProviderType -SloUrl $azure.SloUrl -SsoUrl $azure.SsoUrl -IsDefault
```

```output
Certificate
-----------                                                                                                                                                                                                                                                                       
MIIC8DCCA..
```

This cmdlet updates an Identity Provider setting under Integrations.

## PARAMETERS

### -Certificate
Identity Provider certificate

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
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

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdentityProviderId
Identity provider Id

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

Required: False
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

Required: False
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

Required: False
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

## RELATED LINKS


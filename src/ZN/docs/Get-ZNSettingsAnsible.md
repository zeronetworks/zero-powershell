---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsansible
schema: 2.0.0
---

# Get-ZNSettingsAnsible

## SYNOPSIS
Get the Ansible settings in Asset Management

## SYNTAX

```
Get-ZNSettingsAnsible [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get the Ansible settings in Asset Management

## EXAMPLES

### Example 1: Get Ansible settings
```powershell
Get-ZNSettingsAnsible
```

```output
ClientId CredentialsName DisableCertificateValidation Url Username
-------- --------------- ---------------------------- --- --------
                         False                            
```

This cmdlet returns the Ansible settings.

## PARAMETERS

### -AccountName
this value is per customer / partner

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Read-ZNJWTtoken $env:ZNApiKey).aud.split(".")[0]
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsAnsible

## NOTES

## RELATED LINKS


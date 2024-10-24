---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znsettingsaad
schema: 2.0.0
---

# Get-ZNSettingsAad

## SYNOPSIS
Get Azure AD Settings

## SYNTAX

```
Get-ZNSettingsAad [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Azure AD Settings

## EXAMPLES

### Example 1: Get AAD settings
```powershell
Get-ZNSettingsAad
```

```output
ClientId                             ClientSecret TenantId
--------                             ------------ --------
baa75fcd-84ed-4866-8467-db7c74df7aa2              d131b298-ef35-4433-98f7-af0a20369416
```

This cmdlet returns the aad setings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsAzureAd

## NOTES

## RELATED LINKS


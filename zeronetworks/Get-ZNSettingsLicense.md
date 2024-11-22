---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingslicense
schema: 2.0.0
---

# Get-ZNSettingsLicense

## SYNOPSIS
Get Subscription Licenses

## SYNTAX

```
Get-ZNSettingsLicense -LicenseType <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get Subscription Licenses

## EXAMPLES

### Example 1: Get network license
```powershell
Get-ZNSettingsLicense -ProtectionType network
```

```output
ConfigInfoLicenseMode                   : 1
ConfigInfoProtectedAndQueuedAssetsLimit : -1
ConfigInfoQueuedAssetsLimit             : -1
CountPbProtected                        : 1
CountQueued                             : 2
```

This cmdlet gets the network licenses.

### Example 2: Get identity license
```powershell
Get-ZNSettingsLicense -ProtectionType identity
```

```output
ConfigInfoLicenseMode                   : 1
ConfigInfoProtectedAndQueuedAssetsLimit : -1
ConfigInfoQueuedAssetsLimit             : -1
CountPbProtected                        : 1
CountQueued                             : 2
```

This cmdlet gets the identity licenses.

### Example 2: Get RPC license
```powershell
Get-ZNSettingsLicense -ProtectionType rpc
```

```output
ConfigInfoLicenseMode                   : 1
ConfigInfoProtectedAndQueuedAssetsLimit : -1
ConfigInfoQueuedAssetsLimit             : -1
CountPbProtected                        : 1
CountQueued                             : 2
```

This cmdlet gets the RPC licenses.

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

### -LicenseType
The license type

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ILicensesConfig

## NOTES

## RELATED LINKS


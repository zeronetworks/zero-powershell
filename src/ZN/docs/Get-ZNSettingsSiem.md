---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingssiem
schema: 2.0.0
---

# Get-ZNSettingsSiem

## SYNOPSIS
List SIEM Configuration

## SYNTAX

```
Get-ZNSettingsSiem [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
List SIEM Configuration

## EXAMPLES

### Example 1: Get SIEM Settings
```powershell
Get-ZNSettingsSiem
```

```output
ConfigAuditsEndpoint             : Custom-zeronetworksaudit_CL
ConfigIdentityActivitiesEndpoint : 
ConfigNetworkActivitiesEndpoint  : 
ConfigReceiverType               : 3
ConfigRpcActivitiesEndpoint      : 
ReceiverConfigClientId           : 16f564c2-8157-452d-8341-6adf3a123e3c
ReceiverConfigHecUri             : 
ReceiverConfigTenantId           : 16f564c2-8157-452d-8341-6adf3a123e3c
ReceiverConfigUrl                : https://zeronetworks-dce-5bzg.eastus-1.ingest.monitor.azure.com/dataCollectionRules/dcr-6fc4b684a9c847f4abc971b34c846655/streams
```

This cmdlet gets the SIEM settings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsEventsReceiverConfig

## NOTES

## RELATED LINKS


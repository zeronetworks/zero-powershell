---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingssiemsyncstatus
schema: 2.0.0
---

# Get-ZNSettingsSiemSyncStatus

## SYNOPSIS
Get SIEM Sync Status Configuration

## SYNTAX

```
Get-ZNSettingsSiemSyncStatus [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get SIEM Sync Status Configuration

## EXAMPLES

### Example 1: Get SIEM sync status
```powershell
Get-ZNSettingsSiemSyncStatus
```

```output
AuditErrorMessage                      : 
AuditErrorType                         : 0
AuditLastSuccessfulSyncTime            : 1742319600020
AuditLastSyncTime                      : 1742319540000
IdentityActivityErrorMessage           : 
IdentityActivityErrorType              : 
IdentityActivityLastSuccessfulSyncTime : 
IdentityActivityLastSyncTime           : 
NetworkActivityErrorMessage            : 
NetworkActivityErrorType               : 
NetworkActivityLastSuccessfulSyncTime  : 
NetworkActivityLastSyncTime            : 
RpcActivityErrorMessage                : 
RpcActivityErrorType                   : 
RpcActivityLastSuccessfulSyncTime      : 
RpcActivityLastSyncTime                : 
```

This cmdlet gets the SIEM sync status.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsEventsReceiverSyncStatus

## NOTES

## RELATED LINKS


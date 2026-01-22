---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsconnectclientfreezeperiod
schema: 2.0.0
---

# Get-ZNSettingsConnectClientFreezePeriod

## SYNOPSIS
Get all connect client freeze periods

## SYNTAX

```
Get-ZNSettingsConnectClientFreezePeriod [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get all connect client freeze periods

## EXAMPLES

### Example 1: List freeze periods
```powershell
Get-ZNSettingsConnectClientFreezePeriod
```

```output
CreatedById    : 
Description    : SeptFreeze
EndTime        : 1772396612000
FreezeState    : 1
FreezeWindowId : 11377605-2eb5-4e0c-9d91-7a4c4ee58da3
StartTime      : 1771100612000
UpdatedById    :
```

This cmdlet lists freeze periods.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsFreezePeriodList

## NOTES

## RELATED LINKS


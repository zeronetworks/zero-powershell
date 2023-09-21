---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsconnectuseraccessconfig
schema: 2.0.0
---

# Get-ZNSettingsConnectUserAccessConfig

## SYNOPSIS
List Connect User Access Configurations in Settings

## SYNTAX

```
Get-ZNSettingsConnectUserAccessConfig [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
List Connect User Access Configurations in Settings

## EXAMPLES

### Example 1: List Connect User access configurations
```powershell
Get-ZNSettingsConnectUserAccessConfig                      
CreatedAt     Description ForceSsoAuthentication Id           Name    SessionTtlHours
---------     ----------- ---------------------- --           ----    ---------------
1685733928254             True                   v:a:0IoMjM9F Default 48
```

This cmdlet lists User access configurations under Connect in Settings.

## PARAMETERS

### -Limit
Limit the return results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Offset
Used to page through results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IConnectUserAccessConfig

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS


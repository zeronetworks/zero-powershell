---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsconnectuseraccessconfig
schema: 2.0.0
---

# Get-ZNSettingsConnectUserAccessConfig

## SYNOPSIS
List Connect User Access Configurations in Settings

## SYNTAX

```
Get-ZNSettingsConnectUserAccessConfig [-AccountName <String>] [-Limit <Int32>] [-Offset <Int32>]
 [<CommonParameters>]
```

## DESCRIPTION
List Connect User Access Configurations in Settings

## EXAMPLES

### Example 1: List Connect User access configurations
```powershell
Get-ZNSettingsConnectUserAccessConfig                      
```

```output
CreatedAt     Description ForceSsoAuthentication Id           Name    SessionTtlHours
---------     ----------- ---------------------- --           ----    ---------------
1685733928254             True                   v:a:0IoMjM9F Default 48
```

This cmdlet lists User access configurations under Connect in Settings.

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
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IConnectUserAccessConfigList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


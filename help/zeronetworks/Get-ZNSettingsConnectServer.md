---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znsettingsconnectserver
schema: 2.0.0
---

# Get-ZNSettingsConnectServer

## SYNOPSIS
List Connect Servers in Settings

## SYNTAX

```
Get-ZNSettingsConnectServer [-AccountName <String>] [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>]
 [<CommonParameters>]
```

## DESCRIPTION
List Connect Servers in Settings

## EXAMPLES

### Example 1: List Connect servers
```powershell
Get-ZNSettingsConnectServer
```

```output
AssemblyVersion ClientsDnsServerIPs ConnectionState ExternalIPAddress Fqdn            Id           InstalledAt   InternalIPAddress Name Port
--------------- ------------------- --------------- ----------------- ----            --           -----------   ----------------- ---- ----
1.0.12.0        {10.1.0.5}          1               13.90.119.130     CS01.posh.local y:a:jUDZuhXU 1685619874429 10.1.0.9          CS01 52000
```

This cmdlet lists Connect servers under settings.

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

### -Filters
JSON string URI encoded set of filters

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IConnectServersList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


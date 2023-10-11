---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsconnectregion
schema: 2.0.0
---

# Get-ZNSettingsConnectRegion

## SYNOPSIS
List Connect Regions in Settings

## SYNTAX

```
Get-ZNSettingsConnectRegion [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
List Connect Regions in Settings

## EXAMPLES

### Example 1: List Connect regions
```powershell
Get-ZNSettingsConnectRegion
CreatedAt     CreatedBy       DnsServersIPAddressList IPAddress     Id           Name       UpdatedAt     UpdatedBy
---------     ---------       ----------------------- ---------     --           ----       ---------     ---------
1685619785028 nicholas        {10.1.0.5}              13.90.119.130 r:a:qjNbW2rx azure-posh 1685619785028 nicholas
1684846883972 Nicholas DiCola {192.168.2.1}           1.2.3.4       r:a:q0tqD2rf TestRegion 1684846883972 Nicholas DiCola
```

This cmdlet lists the Connect regsion settings.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IConnectRegion

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS


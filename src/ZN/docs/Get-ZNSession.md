---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsession
schema: 2.0.0
---

# Get-ZNSession

## SYNOPSIS
Returns a list of Connect sessions.

## SYNTAX

```
Get-ZNSession [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of Connect sessions.

## EXAMPLES

### Example 1: List Connect Sessions
```powershell
Get-ZNSession
```

```output
ClientPrivateIP ClientVersion ConnectedSince ConnectionState CurrentPublicIP Id           LastLogon     RoleId
--------------- ------------- -------------- --------------- --------------- --           ---------     ------
192.168.200.2   1.0.46.0      1688742900335  1               20.25.132.197   s:a:YQmFrXJx 1688742898770 
```

This cmdlet lists Connect sessions.

## PARAMETERS

### -Filters
JSON string URI encoded set of fiters

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
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISession

## NOTES

ALIASES

## RELATED LINKS


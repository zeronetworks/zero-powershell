---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znusersmanagedasset
schema: 2.0.0
---

# Get-ZNUsersManagedAsset

## SYNOPSIS
get managed assets for user

## SYNTAX

```
Get-ZNUsersManagedAsset -UserId <String> [-AccountName <String>] [-Limit <Int32>] [-Offset <Int32>]
 [<CommonParameters>]
```

## DESCRIPTION
get managed assets for user

## EXAMPLES

### Example 1: List a users managed assets
```powershell
Get-ZNUsersManagedAsset -UserId u:a:RVVXGo4w
```

```output
EntityId     Relation
--------     --------
a:a:8ErCHXe8 1
g:t:01445453 3
```

This cmdlet lists a users managed assets.

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

### -UserId
userId to filter on

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IManagedAssetsList

## NOTES

## RELATED LINKS


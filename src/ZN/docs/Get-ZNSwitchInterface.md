---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znswitchinterface
schema: 2.0.0
---

# Get-ZNSwitchInterface

## SYNOPSIS
List interfaces for a switch

## SYNTAX

```
Get-ZNSwitchInterface -SwitchId <String> [-AccountName <String>] [-Limit <Int32>] [-Offset <Int32>]
 [-Search <String>] [-WithCount] [<CommonParameters>]
```

## DESCRIPTION
List interfaces for a switch

## EXAMPLES

### Example 1: List switch interfaces
```powershell
(Get-ZNSwitchInterface -SwitchId w:c:IBlczUkw).Item
```

```output
IsMonitored Name             NumOfOts
----------- ----             --------
      False GigabitEthernet1        0
       True GigabitEthernet2        1
      False GigabitEthernet3        0
      False GigabitEthernet4        0
```

This cmdlet lists switch interfaces.

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

### -Search
Test to search for

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

### -SwitchId
switch to delete

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

### -WithCount
return count of objects

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: $true
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISwitchInterfacesList

## NOTES

## RELATED LINKS


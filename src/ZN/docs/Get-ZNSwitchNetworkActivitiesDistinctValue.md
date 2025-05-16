---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znswitchnetworkactivitiesdistinctvalue
schema: 2.0.0
---

# Get-ZNSwitchNetworkActivitiesDistinctValue

## SYNOPSIS
Returns a list of distinct values for a field in network activities.

## SYNTAX

```
Get-ZNSwitchNetworkActivitiesDistinctValue -FieldName <String> -SwitchId <String> [-AccountName <String>]
 [-From <Int64>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of distinct values for a field in network activities.

## EXAMPLES

### Example 1: ist distinct value for a network activities field
```powershell
Get-ZNSwitchNetworkActivitiesDistinctValue -SwitchId $switch.Id -FieldName dstPort
```

```output
ItemAggregations
----------------
{}
```

This cmdlet lists the distinct values for a network activities field.

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

### -FieldName
The field name to filter on

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

### -From
startTime in epoch(ms)

```yaml
Type: System.Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IActivitiesDistictValuesList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


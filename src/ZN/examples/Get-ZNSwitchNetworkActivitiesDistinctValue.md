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

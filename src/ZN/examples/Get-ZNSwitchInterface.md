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

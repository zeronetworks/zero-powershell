### Example 1: List switch vlans
```powershell
(Get-ZNSwitchVlan -SwitchId w:c:HCPh7Xoc).Items
```

```output
InterfacesList                                                                                  Name
--------------                                                                                  ----
{AppGigabitEthernet1/0/1, GigabitEthernet1/0/10, GigabitEthernet1/0/11, GigabitEthernet1/0/12…} 1
{GigabitEthernet1/0/1}                                                                          3
{}                                                                                              4
{}                                                                                              5
```

This cmdlet lists switch vlans.

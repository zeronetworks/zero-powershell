### Example 1: Create a switch
```powershell
New-ZNSwitch -IP 192.168.100.1 -MonitorInterfaceOnOtAdded -MonitorOnInterfaceDiscovery:$false -name test -Password 'password' -Type 1 -Username zero
```

```output
SwitchId1
---------
w:c:jTb263az
```

This cmdlet creates a switch.

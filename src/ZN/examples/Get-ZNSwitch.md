### Example 1: List switches
```powershell
(Get-ZNSwitch).items
```

```output
HealthStateHealthIssuesList : {}
HealthStateHealthStatus     : 1
IP                          : 192.168.2.251
Id                          : w:c:IBlczUkw
InterfacesList              : {GigabitEthernet1, GigabitEthernet2, GigabitEthernet3, GigabitEthernet4}
MonitorInterfaceOnOtAdded   : True
MonitorOnInterfaceDiscovery : False
Name                        : eve
NumOfOts                    : 0
Type                        : 1
Username                    : zero
```

This cmdlet lists switches.

### Example 2: Get a switch
```powershell
Get-ZNSwitch -SwitchId w:c:IBlczUkw
```

```output
EntityIP                          : 192.168.2.251
EntityId                          : w:c:IBlczUkw
EntityInterfacesList              : {GigabitEthernet1, GigabitEthernet2, GigabitEthernet3, GigabitEthernet4}
EntityMonitorInterfaceOnOtAdded   : True
EntityMonitorOnInterfaceDiscovery : False
EntityName                        : eve
EntityNumOfOts                    : 1
EntityType                        : 1
EntityUsername                    : zero
HealthStateHealthIssuesList       : {}
HealthStateHealthStatus           : 1
Permission                        : 3
```

This cmdlet gets a switch.

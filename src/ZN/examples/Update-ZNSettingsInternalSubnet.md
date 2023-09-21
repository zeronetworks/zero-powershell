### Example 1: Update internal subnets
```powershell
Update-ZNSettingsInternalSubnet -PrivateNetworksList @("10.0.0.0/8","100.64.0.0/10","169.254.0.0/16","172.16.0.0/12","192.0.0.0/24","192.168.0.0/16","198.18.0.0/15","1.1.1.0/24")

```

This cmdlet updates the internal subnets setting under System.
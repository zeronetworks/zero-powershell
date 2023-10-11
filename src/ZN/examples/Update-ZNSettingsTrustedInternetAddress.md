### Example 1: Update Trusted Internet Addresses
```powershell
$trusted = Get-ZNSettingsTrustedInternetAddress
$trusted += "1.2.3.5"                                                          
Update-ZNSettingsTrustedInternetAddress -ExternalIpsList $trusted

```

This cmdlet updates the trusted internet addresses list.

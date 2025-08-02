### Example 1: Update Portal allowed IPs
```powershell
$allowedIPs = Get-ZNSettingsAuthAllowedIP
$allowedIPs.ItemAllowedIPs +=  (Invoke-ZNEncodeEntityIP  -ip 1.1.1.1).Id
Update-ZNSettingsAuthAllowedIP -AllowedIPs $allowedIPs.ItemAllowedIPs
```

```output

```

This cmdlet updates the Portal allowed IPs settings.

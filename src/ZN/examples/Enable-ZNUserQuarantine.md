### Example 1: Enable quarantine for a user
```powershell
$user = (Get-ZNUser).Items | where {$_.Name -like "bad*"}
Enable-ZNUserQuarantine -UserId $user.Id -Quarantine
```

```output

```

This cmdlet quarantines a user.

### Example 2: Enable quarantine for users
```powershell
Enable-ZNUserQuarantine -Items @("u:a:HHzQ02eL") -Quarantine
```

```output

```

This cmdlet enables quarantine for a list fo assets.

### Example 3: Disable quarantine for a user
```powershell
$user = (Get-ZNUser).Items | where {$_.Name -like "bad*"}
Enable-ZNUserQuarantine -UserId $user.Id -Quarantine:$false
```

```output

```

This cmdlet disables quarantine a user.

### Example 2: Disable quarantine for users
```powershell
Enable-ZNUserQuarantine -Items @("u:a:HHzQ02eL") -Quarantine:$false
```

```output

```

This cmdlet disables quarantine for a list fo assets.




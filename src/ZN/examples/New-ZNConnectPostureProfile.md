### Example 1: Create Connect posture check
```powershell
New-ZNConnectPostureProfile -Action BLOCK -CheckIntervalSeconds 900 -Name AV2 -WindowsChecksAntivirusIsEnabled:$true
```

```output
P:a:5Zs7b52g
```

This cmdlet creates a Connect posture check.

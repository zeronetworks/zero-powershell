### Example 1: Remove a service account from segmentation
```powershell
Unprotect-ZNUserIdentity -UserIds @("u:a:mACDNWcW")
```

This cmdlet moves a service account from segmented to not segmented.
### Example 1: Get network license
```powershell
Get-ZNSettingsLicense -ProtectionType network
```

```output
ConfigInfoLicenseMode                   : 1
ConfigInfoProtectedAndQueuedAssetsLimit : -1
ConfigInfoQueuedAssetsLimit             : -1
CountPbProtected                        : 1
CountQueued                             : 2
```

This cmdlet gets the network licenses.

### Example 2: Get identity license
```powershell
Get-ZNSettingsLicense -ProtectionType identity
```

```output
ConfigInfoLicenseMode                   : 1
ConfigInfoProtectedAndQueuedAssetsLimit : -1
ConfigInfoQueuedAssetsLimit             : -1
CountPbProtected                        : 1
CountQueued                             : 2
```

This cmdlet gets the identity licenses.

### Example 2: Get RPC license
```powershell
Get-ZNSettingsLicense -ProtectionType rpc
```

```output
ConfigInfoLicenseMode                   : 1
ConfigInfoProtectedAndQueuedAssetsLimit : -1
ConfigInfoQueuedAssetsLimit             : -1
CountPbProtected                        : 1
CountQueued                             : 2
```

This cmdlet gets the RPC licenses.

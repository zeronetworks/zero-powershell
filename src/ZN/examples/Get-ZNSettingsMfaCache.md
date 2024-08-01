### Example 1: List MFA Cache policies
```powershell
(Get-ZNSettingsMfaCache).Items
```

```output
AssetLimit EntityId     EntityInfo                                                            TtlMinutes
---------- --------     ----------                                                            ----------
        10 g:a:3U1Z38mF ZeroNetworks.PowerShell.Cmdlets.Api.Models.SettingsMfaCacheEntityInfo        720
```

This cmdlet lists MFA cache policies.

### Example 1: Create a MFA cache policy
```powershell
New-ZNSettingsMfaCache -AssetLimit 10 -EntityId u:d:2HOfhbpY -TtlMinutes 400
```

```output
ItemAssetLimit ItemEntityId ItemTtlMinutes
-------------- ------------ --------------
            10 u:d:2HOfhbpY            400
```

This cmdlet creates a MFA cache policy.
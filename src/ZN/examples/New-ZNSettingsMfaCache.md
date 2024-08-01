### Example 1: Create MFA Cache policy
```powershell
$group = (Get-ZNGroup -Search Users).Items | where {$_.Domain -eq "posh.local" -and $_.Name -eq "Users"}
New-ZNSettingsMfaCache -AssetLimit 5 -EntityId $group.Id -TtlMinutes 720
```

```output
ItemAssetLimit ItemEntityId ItemTtlMinutes
-------------- ------------ --------------
             5 g:a:zy4ybEPY            720
```

This cmdlet creates a MFA cache policy.

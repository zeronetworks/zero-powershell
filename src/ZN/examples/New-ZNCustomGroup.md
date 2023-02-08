### Example 1: Create a custom group
```powershell
New-ZNCustomGroup -Name "test3" -Description "test custom group" -MembersId @((Search-ZNAsset -Fqdn dc1.zero.labs))
```

```output

```

This cmdlet will create a new customer group in the environment. The MembersId is an array of assetIds to add to the group.

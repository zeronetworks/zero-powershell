### Example 1: Create an identity rule
```powershell
$group = Get-ZNGroup -Search "domain controllers" | where {$_.Id -like "g:t:*"}
$groupDA = Get-ZNGroup -Search "domain admins" | where {$_.Id -like "g:a:*"} 
New-ZNIdentityRule -Action 1 -AssetId $group.Id -Description "test" -IdentityProtectionCategoryList 5 -State 1 -UserIdsList @($groupDA.Id)
```

```output

```

This cmdlet creates an identity rule for a group.

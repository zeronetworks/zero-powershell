### Example 1: Create an identity rule
```powershell
$group = Get-ZNGroup -Search "domain controllers" | where {$_.Id -like "g:t:*"}
$user = (Get-ZNUser -Search zero).Items | where {$_.name -eq "zero"}
New-ZNUserIdentityRule -UserId $user.Id -Action 1 -AssetId $group.Id -Description "test" -IdentityProtectionCategoryList 5 -State 1 -UserIdsList @($user.Id)
```

This cmdlet creates an identity rule for a group.

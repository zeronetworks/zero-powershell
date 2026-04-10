### Example 1: Create a Connect Policy
```powershell
$users = (Get-ZNConnectPoliciesSourceUsersCandidate -Search zero).Items | where {$_.Name -eq "zero"}
$destinations = (Get-ZNConnectPoliciesDestinationsCandidate -Search "Internal Subnets").Items
$assets = (Get-ZNConnectPoliciesAssetsCandidate).Items | where {$_.Name -eq "Any Asset"}
New-ZNConnectPolicy -DstEntityIdsList @($destinations.id) -LoginAuthorizedEntityAllowedUsersIdsList @($users.id) -Name UAC -SessionTtlHours 168 -ConnectivityStateAfterReboot 1 -LoginAuthorizedEntityAllowedAssetIdsList @($assets.Id) -LoginAuthorizedEntityAllowedAssetsSourcesList @(1) -AllowedRegions "b:110007"
```

```output

```

This cmdlet creates a Connect policy.

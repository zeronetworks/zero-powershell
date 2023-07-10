### Example 1: Create User Access Config
```powershell
$users = Get-ZNSettingsConnectUserAccessConfigCandidate | Where {$_.Name -eq 'zero'}
$destinations = Get-ZNSettingsConnectUserAccessConfigDestinationsCandidate | where {$_.Name -eq 'Internal subnets'}
New-ZNSettingsConnectUserAccessConfig -DstEntityIdsList @($destinations.id) -MembersIdsList @($users.id) -Name UAC -SessionTtlHours 168
```

```output

```

This cmldet creates a User Access Config for Connect.

### Example 1: Remove a User Access Config
```powershell
$uac = Get-ZNSettingsConnectUserAccessConfig | where {$_. Name -eq 'TestUAC'}
Remove-ZNSettingsConnectUserAccessConfig -UserAccessConfigId $uac.id
```

```output

```

This cmdlet removes a User Access Config for Connect.

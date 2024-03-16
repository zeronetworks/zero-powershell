### Example 1: Delete a UAC from Connect settings
```powershell
$uac = Get-ZNSettingsConnectUserAccessConfig | where {$_.Name -eq "testapi"}
Remove-ZNSettingsConnectUserAccessConfig -UserAccessConfigId $uac.Id
```

```output

```

This cmdlet deletes a user access config for Connect settings.

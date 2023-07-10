### Example 1: Update User Access Config
```powershell
$uac = Get-ZNSettingsConnectUserAccessConfig | where {$_. Name -eq 'UAC'}
Update-ZNSettingsConnectUserAccessConfig -UserAccessConfigId $uac.id -SessionTtlHours 24 -DstEntityIdsList @($uac.AllowedDestinations.Id) -MembersIdsList @($uac.MemberIds.Id) -Name $uac.Name
```    

```output

```

This cmdlet updates a User Access Config for Connect

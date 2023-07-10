### Example 1: Remove an AD forest
```powershell
$ad = Get-ZNAdSetting | where {$_.ActiveDirectoryInfoDomainName -eq 'posh.local'}
Remove-ZNAdSetting -Forest ($ad.ForestId)
```

```output

```

This cmdlet removes and AD forest setting.

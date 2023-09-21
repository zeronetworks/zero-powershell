### Example 1: Update AD groups settings
```powershell
$forest = Get-ZNSettingsAd | where {$_.ActiveDirectoryInfoDomainName -eq "test.local"}
$monitorGroup = (Get-ZNSettingsAdMonitoredCandidate -ForestId $forest.ForestId).Items | where {$_.Name -eq "All AD Assets"}
Update-ZNSettingsAdAutomationGroup -ForestId $forest.ForestId -MonitoredGroupId $monitorGroup.Id

```

This cmdlet updates the monitor or protection automation group controls.
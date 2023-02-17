### Example 1: Update AI Exclusion settings for excluded sources
```powershell
Update-ZNAiExclusionSrcEntity -Body (Search-ZNAsset -Fqdn dc1.zero.labs)
```

```output

```

This cmdlet updates the AI excluded sources under Data Collection.

### Example 2: Add a setting to the current settings.
```powershell
$excludedSources = @()
$excludedSources += (Get-ZNAiExclusionSrcEntity).Id
Update-ZNAiExclusionSrcEntity -Body ($excludedSources += (Search-ZNAsset -Fqdn fs1.zero.labs))
```

```output
   
```

Use exisitng settings to update or add ports or processes.

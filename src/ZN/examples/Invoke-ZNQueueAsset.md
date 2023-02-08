### Example 1: Move an asset into learning
```powershell
Invoke-ZNQueueAsset -Items @((Search-ZNAsset -Fqdn fs1.zero.labs)) -QueueDays 14
```

```output

```

This cmdlet will extend the learning time of an asset in the environment.
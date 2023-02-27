### Example 1: Get Audits for an Asset.
```powershell
(Get-ZNAssetAudit -AssetId a:a:ZgBWOMyc).Items
```

```output
IsoTimestamp             AuditType DestinationEntitiesList EnforcementSource PerformedByName
------------             --------- ----------------------- ----------------- ---------------
2023-02-14T00:21:52.995Z 19        {DC1}                   4                 Nicholas DiCola
2023-02-14T00:09:55.155Z 17        {DC1}                   5                 Zero Networks
2023-02-09T13:43:54.126Z 7         {DC1}                   5                 Zero Networks
2022-11-29T13:09:24.117Z 41        {DC1}                   4                 Polina Blinchevsky
2022-11-22T11:50:30.439Z 28        {DC1}                   5                 Zero Networks
2022-10-13T19:43:15.977Z 28        {DC1}                   6                 PowerShell
2022-10-13T18:28:43.287Z 28        {DC1}                   6                 PowerShell
2022-10-13T16:49:51.236Z 44        {DC1}                   2                 Zero Networks
2022-10-12T21:12:28.495Z 5         {DC1}                   6                 PowerShell
2022-10-12T21:12:28.493Z 4         {DC1}                   6                 PowerShell
```

This cmdlet returns audits for assets.

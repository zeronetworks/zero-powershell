### Example 1: List audits for an OT asset
```powershell
$otasset = Get-ZNAssetsOt | where {$_.Fqdn -eq "ot1777"}
(Get-ZNAssetOtAudit -AssetId $otasset.id).Items
```

```output
AuditType DestinationEntitiesList EnforcementSource PerformedByName
--------- ----------------------- ----------------- ---------------
74        {ot1777}                5                 Zero Networks
31        {ot1777}                2                 Zero Networks
31        {ot1777}                2                 Zero Networks
31        {ot1777}                2                 Zero Networks
55        {ot1777}                2                 Zero Networks
55        {ot1777}                2                 Zero Networks
55        {ot1777}                2                 Zero Networks
29        {ot1777}                5                 Zero Networks
29        {ot1777}                5                 Zero Networks
29        {ot1777}                5                 Zero Networks
```

This cmdlet returns audits for an OT asset.

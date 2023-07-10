### Example 1: Approve an inbound block rule for a specific asset
```powershell
Approve-ZNAssetsInboundBlockRuleReview -AssetId a:a:OtfLGUBq -RuleId abb0516d-a345-4b27-995b-74c772791cc9
```

```output

```

This cmdlet will approve an inbound block rule without changes.

### Example 2: Approve an inbound block rule with changes for a specific asset
```powershell
$ports = (Get-ZNAssetsInboundBlockRule -AssetId a:a:OtfLGUBq -RuleId abb0516d-a345-4b27-995b-74c772791cc9).ItemPortsList
$updatedPorts = New-ZNPortsList -Protocol $ports.ProtocolType -Ports ($ports.Ports+,"1234")
Approve-ZNAssetsInboundAllowBlockReview -RuleId abb0516d-a345-4b27-995b-74c772791cc9 -Reason MissingPortOrProcess -PortsList $updatedPorts
```

```output

```

This cmdlet will approve an inbound block rule with changes for a specific asset.
### Example 1: Approve an outbound allow rule
```powershell
Approve-ZNOutboundAllowRuleReview -RuleId abb0516d-a345-4b27-995b-74c772791cc9
```

```output

```

This cmdlet will approve an outbound allow rule without changes.

### Example 2: Approve an outbound allow rule with changes
```powershell
$ports = (Get-ZNOutboundAllowRule -RuleId abb0516d-a345-4b27-995b-74c772791cc9).ItemPortsList
$updatedPorts = New-ZNPortsList -Protocol $ports.ProtocolType -Ports ($ports.Ports+,"1234")
Approve-ZNOutboundAllowRuleReview -RuleId abb0516d-a345-4b27-995b-74c772791cc9 -Reason MissingPortOrProcess -PortsList $updatedPorts
```

```output

```

This cmdlet will approve an outbound allow rule with changes.
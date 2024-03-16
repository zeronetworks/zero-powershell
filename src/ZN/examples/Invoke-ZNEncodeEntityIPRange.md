### Example 1: Encode an IP Address range
```powershell
Invoke-ZNEncodeEntityIPRange -IPRange 1.1.1.1-1.1.1.2 
```

```output
b:120101010120b:140101010101010102
```

This cmdlet encodes an IP Address range to ZNSegement entityId for use in rules and policies.

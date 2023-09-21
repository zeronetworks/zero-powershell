### Example 1: Encode an IP subnet range
```powershell
Invoke-ZNEncodeEntitySubnet -Subnet 1.1.1.0/24 
b:120101010018
```

This cmdlet encodes an IP subnet to ZNSegement entityId for use in rules and policies.

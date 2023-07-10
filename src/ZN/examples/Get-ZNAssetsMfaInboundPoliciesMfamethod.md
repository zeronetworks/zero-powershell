### Example 1: List possible MFA methods for an inbound MFA policy for a specific asset
```powershell
Get-ZNAssetsMfaInboundPoliciesMfamethod -AssetId 'a:a:OtfLGUBq'
```

```output
1
2
3
4
5
```

This cmdlet will return the possible MFA methods for an inbound MFA policy. The values are mapped to:
1 = SMS
2 = Email
3 = Duo Push
4 = Browser
5 = No MFA

### Example 1: List possible MFA methods for an outbound MFA policy for a specific policy
```powershell
Get-ZNAssetsMfaOutboundPoliciesMfamethod -AssetId 'a:a:OtfLGUBq'
```

```output
1
2
3
4
5
```

This cmdlet will return the possible MFA methods for an outbound MFA policy. The values are mapped to:
1 = SMS
2 = Email
3 = Duo Push
4 = Browser
5 = No MFA

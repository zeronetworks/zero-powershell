### Example 1: Update Identity Provider
```powershell
$azure = Get-ZNIdpSetting | where {$_.IdentityProviderType -eq "azure"}
Update-ZNIdpSetting -IdentityProviderId $azure.IdentityProviderType -Certificate $azure.Certificate -IdentityProvider $azure.IdentityProviderType -SloUrl $azure.SloUrl -SsoUrl $azure.SsoUrl -IsDefault
```

```output
Certificate
-----------                                                                                                                                                                                                                                                                       
MIIC8DCCA..
```

This cmdlet updates an Identity Provider setting under Integrations.

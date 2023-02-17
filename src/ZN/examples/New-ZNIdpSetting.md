### Example 1: Create an Identity Provider setting
```powershell
New-ZNIdpSetting  -IdentityProvider "azure" -SloUrl "https://login.microsoftonline.com/d6eebbdd-d77c-465e-b008-4339027b4006/saml2" -SsoUrl "https://login.microsoftonline.com/d6eebbdd-d77c-465e-b008-4339027b4006/saml2" -IsDefault:$false -Certificate 'MIIC...'
```

```output
Certificate
-----------                                                                                                                                                                                                                                                                       
MIIC8DCCAd...
```

This cmdlet creates a new Identity Provider setting under Integrations. Allowed values for -IdentityProvider are azure, cyberark, custom, duo, or okta.

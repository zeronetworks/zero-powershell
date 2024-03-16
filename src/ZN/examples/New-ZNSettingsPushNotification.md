### Example 1: Configure Microsoft Authenticator Push notifications
```powershell
New-ZNSettingsPushNotification -PushIdentityProviderId microsoftAuthenticator -SecretKey "mySecretKey" -TenantId "myTenantId"   
```

```output

```

This cmdlet creates a Microsoft Authenticator push notifications settings.

### Example 2: Configure Duo Push notifications
```powershell
New-ZNSettingsPushNotification -PushIdentityProviderId duo -SecretKey "mySecretKey" -ApiHostname "api-12345.duosecurity.com"  -IntegrationKey "myIntegrationKey"
```

```output

```

This cmdlet creates a Duo push notifications settings.

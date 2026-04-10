### Example 1: List webhooks
```powershell
Get-ZNSettingsWebhook
```

```output
AuthType               : 1
Description            : 
Id                     : e:w:1ZdDPsky
IsEnabled              : False
Name                   : test
SyncStatusCode         : 0
SyncStatusErrorMessage : 
SyncStatusErrorType    : 1
Triggers               : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.SettingsWebhookTrigger, ZeroNetworks.PowerShell.Cmdlets.Api.Models.SettingsWebhookTrigger}
Url                    : https://test.com/1
ValidateCertificate    : True
```

This cmdlet lists configured webhooks.

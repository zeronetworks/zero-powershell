### Example 1: Update a webhook
```powershell
Update-ZNSettingsWebhook -WebhookId e:w:C0uUcJSV -AuthType 1 -IsEnabled:$false -Name "test2"  -Url "https://test23.com"
```

```output
SyncStatusCode             : 0
SyncStatusErrorMessage     : 
SyncStatusErrorType        : 1
WebhookAuthType            : 1
WebhookDescription         : 
WebhookId                  : e:w:C0uUcJSV
WebhookIsEnabled           : False
WebhookName                : test2
WebhookTriggers            : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.SettingsWebhookTrigger}
WebhookUrl                 : https://test23.com
WebhookValidateCertificate : False
```

This cmdlet updates a webhook.

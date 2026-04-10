### Example 1: Create webhook
```powershell
New-ZNSettingswebhook -AuthType 1 -IsEnabled:$false -Name "NewWebhook" -Url "https://someurl.com" -ValidateCertificate:$false -Triggers @($trigger1;$trigger2)
```

```output
CredentialsAuthType              : 1
SyncStatusCode                   : 0
SyncStatusErrorMessage           : 
SyncStatusErrorType              : 1
WebhookServerDescription         : 
WebhookServerId                  : e:w:9cwKddWs
WebhookServerIsEnabled           : True
WebhookServerName                : NewWebhook
WebhookServerUrl                 : https://someurl.com
WebhookServerValidateCertificate : True
WebhookTriggersList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.SettingsWebhookTrigger, 
                                   ZeroNetworks.PowerShell.Cmdlets.Api.Models.SettingsWebhookTrigger}
```

This cmdlet creates a webhook.

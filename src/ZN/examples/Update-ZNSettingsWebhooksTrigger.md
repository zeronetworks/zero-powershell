### Example 1: Update webhook trigger
```powershell
$webhook = Get-ZNSettingsWebhook | where {$_.Id -eq "e:w:C0uUcJSV"}
$newtrigger = New-ZNSettingsWebhooksTrigger -Rules -RulesResource "OUTBOUNDIT"
$webhook.Triggers.Add($newtrigger) 
Update-ZNSettingsWebhooksTrigger -WebhookId $webhook.id -Triggers $webhook.Triggers
```

```output

```

This cmdlet updates triggers for a webhook.

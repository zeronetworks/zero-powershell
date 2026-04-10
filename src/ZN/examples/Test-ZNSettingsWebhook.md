### Example 1: Test a webhook
```powershell
Test-ZNSettingsWebhook -WebhookId e:w:C0uUcJSV
```

```output
ConnectionStateErrorMessage
---------------------------                                                                                                
failed to send data to index, expectedCode: 200, actualCode: 404, body: <html><head><title>Not Found</title></head><body>4
```

This cmdlet tests a webhook and returns success or error data.

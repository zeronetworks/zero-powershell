---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/update-znsettingswebhook
schema: 2.0.0
---

# Update-ZNSettingsWebhook

## SYNOPSIS
Update Webhooks settings

## SYNTAX

```
Update-ZNSettingsWebhook -WebhookId <String> [-AccountName <String>] [-AuthType <Int32>]
 [-Description <String>] [-IsEnabled] [-Name <String>] [-Url <String>] [-ValidateCertificate] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Update Webhooks settings

## EXAMPLES

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

## PARAMETERS

### -AccountName
this value is per customer / partner

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Read-ZNJWTtoken $env:ZNApiKey).aud.split(".")[0]
Accept pipeline input: False
Accept wildcard characters: False
```

### -AuthType
.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsEnabled
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Url
.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ValidateCertificate
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WebhookId
webhookId to filter on

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsWebhookItem

## NOTES

## RELATED LINKS


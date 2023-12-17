---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/update-znsettingsjamfcredentials
schema: 2.0.0
---

# Update-ZNSettingsJamfCredentials

## SYNOPSIS
Returns the upddated properties of JAMF Credentials settings.

## SYNTAX

```
Update-ZNSettingsJamfCredentials -Host1 <String> -Password <String> -Username <String> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns the upddated properties of JAMF Credentials settings.

## EXAMPLES

### Example 1: Update JAMF credentials
```powershell
Update-ZNJamfCredentialsSetting -Host1 <domain>.jamfcloud.com -Username myuser -Password mypassword

```

This cmdlet updates the JAMF credential in Settings under Asset Management.

## PARAMETERS

### -Host1
JAMF url

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

### -Password
JAMF Password

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

### -Username
JAMF username

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsJamfCredentials

## NOTES

## RELATED LINKS


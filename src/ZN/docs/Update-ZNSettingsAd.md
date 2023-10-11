---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/update-znsettingsad
schema: 2.0.0
---

# Update-ZNSettingsAd

## SYNOPSIS
Update AD forest settings.

## SYNTAX

```
Update-ZNSettingsAd -ForestId <String> -ActiveDirectoryInfoDomainControllerFqdn <String>
 -ActiveDirectoryInfoDomainName <String> -ActiveDirectoryInfoUseLdaps -ActiveDirectoryInfoUsername <String>
 -SetActiveDirectoryInfoPasswordCleartext <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Update AD forest settings.

## EXAMPLES

### Example 1: Update AD forest settings
```powershell
$forest = Get-ZNSettingsAd | where {$_.ActiveDirectoryInfoDomainName -eq "test.local"}
Update-ZNSettingsAd -ForestId $forest.ForestId -ActiveDirectoryInfoDomainControllerFqdn "newdc.test.local" -ActiveDirectoryInfoDomainName $forest.ActiveDirectoryInfoDomainName -ActiveDirectoryInfoUseLdaps:$forest.ActiveDirectoryInfoUseLdaps -ActiveDirectoryInfoUsername $forest.ActiveDirectoryInfoUsername -SetActiveDirectoryInfoPasswordCleartext "newpassword"

```

This cmdlet updates AD settings.

## PARAMETERS

### -ActiveDirectoryInfoDomainControllerFqdn
Domain Controller from AD Domain

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

### -ActiveDirectoryInfoDomainName
FQDN of the AD domain

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

### -ActiveDirectoryInfoUseLdaps
Use LDAP or LDAPs

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ActiveDirectoryInfoUsername
Service Account for Zero Networks

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

### -ForestId
The forest id

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

### -SetActiveDirectoryInfoPasswordCleartext
Service Acount Password

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAny

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS


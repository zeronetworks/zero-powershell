---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/enable-znuserquarantine
schema: 2.0.0
---

# Enable-ZNUserQuarantine

## SYNOPSIS
Returns an empty object.

## SYNTAX

### EnableExpanded (Default)
```
Enable-ZNUserQuarantine -UserId <String> -Quarantine [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### EnableExpanded1
```
Enable-ZNUserQuarantine -Items <String[]> -Quarantine [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns an empty object.

## EXAMPLES

### Example 1: Enable quarantine for a user
```powershell
$user = (Get-ZNUser).Items | where {$_.Name -like "bad*"}
Enable-ZNUserQuarantine -UserId $user.Id -Quarantine
```

This cmdlet quarantines a user.

### Example 2: Enable quarantine for users
```powershell
Enable-ZNUserQuarantine -Items @("u:a:HHzQ02eL") -Quarantine
```

This cmdlet enables quarantine for a list fo assets.

### Example 3: Disable quarantine for a user
```powershell
$user = (Get-ZNUser).Items | where {$_.Name -like "bad*"}
Enable-ZNUserQuarantine -UserId $user.Id -Quarantine:$false
```

This cmdlet disables quarantine a user.

### Example 2: Disable quarantine for users
```powershell
Enable-ZNUserQuarantine -Items @("u:a:HHzQ02eL") -Quarantine:$false
```

This cmdlet disables quarantine for a list fo assets.

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

### -Items
.

```yaml
Type: System.String[]
Parameter Sets: EnableExpanded1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Quarantine
Indicates whether to enable or disable quarantine

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

### -UserId
userId to filter on

```yaml
Type: System.String
Parameter Sets: EnableExpanded
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

## RELATED LINKS


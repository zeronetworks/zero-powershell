---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/test-znsettingspamcyberarkconnection
schema: 2.0.0
---

# Test-ZNSettingsPamCyberarkConnection

## SYNOPSIS
Test CyberArk connection

## SYNTAX

### TestExpanded (Default)
```
Test-ZNSettingsPamCyberarkConnection [-AccountName <String>] [-Address <String>] [-CyberArkLogonType <Int32>]
 [-Password <String>] [-SecretsType <Int32>] [-UserName <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Test
```
Test-ZNSettingsPamCyberarkConnection -Body <ISettingsCyberarkConfigBody> [-AccountName <String>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Test CyberArk connection

## EXAMPLES

### Example 1: Test PAM CyberArk settings
```powershell
$pam = Get-ZNSettingsPamCyberark
Test-ZNSettingsPamCyberarkConnection -Address $pam.Address -Password "myPassword" -UserName $pam.UserName -SecretsType $pam.SecretsType -CyberArkLogonType $pam.CyberArkLogonType
```

```output
ErrMsg     Success
------     -------
Connected     True
```

This cmdlet tests the PAM CyberArk settings.

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

### -Address
.

```yaml
Type: System.String
Parameter Sets: TestExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsCyberarkConfigBody
Parameter Sets: Test
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -CyberArkLogonType
* 1 - CyberArk* 2 - LDAP* 3 - Radius* 4 - Windows

```yaml
Type: System.Int32
Parameter Sets: TestExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Password
.

```yaml
Type: System.String
Parameter Sets: TestExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SecretsType
* 1 - Plain* 2 - RDP File

```yaml
Type: System.Int32
Parameter Sets: TestExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserName
.

```yaml
Type: System.String
Parameter Sets: TestExpanded
Aliases:

Required: False
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsCyberarkConfigBody

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsCyberarkConfigTest

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`BODY <ISettingsCyberarkConfigBody>`: .
  - `Address <String>`: 
  - `CyberArkLogonType <Int32>`: * 1 - CyberArk         * 2 - LDAP         * 3 - Radius         * 4 - Windows         
  - `Password <String>`: 
  - `SecretsType <Int32>`: * 1 - Plain         * 2 - RDP File         
  - `UserName <String>`: 

## RELATED LINKS


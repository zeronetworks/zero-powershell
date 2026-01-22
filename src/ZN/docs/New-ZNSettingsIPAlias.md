---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/new-znsettingsipalias
schema: 2.0.0
---

# New-ZNSettingsIPAlias

## SYNOPSIS
Returns an an Ip Alias.

## SYNTAX

```
New-ZNSettingsIPAlias -Alias <String> -IPAddress <String> [-AccountName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns an an Ip Alias.

## EXAMPLES

### Example 1: Create IP Alias
```powershell
New-ZNSettingsIPAlias -Alias "NewIpAlias27" -IP "1.1.1.27"
```

```output
CreatedById   : m:080b3a44fa9a5d27f2843819bc4687a4dca8f20e
CreatedByName : powershell-module-development
ItemAlias     : NewIpAlias27
ItemCreatedAt : 1767117293831
ItemIP        : 1.1.1.27
ItemId        : e:i:FNR8nkR3
ItemUpdatedAt : 
UpdatedById   : 
UpdatedByName : 
```

This cmdlet creates an IP alias.

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

### -Alias
.

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

### -IPAddress
.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsIPAliasItem

## NOTES

## RELATED LINKS


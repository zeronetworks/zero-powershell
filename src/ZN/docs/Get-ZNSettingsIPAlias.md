---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsipalias
schema: 2.0.0
---

# Get-ZNSettingsIPAlias

## SYNOPSIS
Returns the properties of an IP Alias.

## SYNTAX

### List (Default)
```
Get-ZNSettingsIPAlias [-AccountName <String>] [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>]
 [-WithCount] [<CommonParameters>]
```

### Get
```
Get-ZNSettingsIPAlias -IPAliasId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of an IP Alias.

## EXAMPLES

### Example 1: List IP aliases
```powershell
(Get-ZNSettingsIPAlias).Items
```

```output
Alias         : NewIpAlias
CreatedAt     : 1765466672902
CreatedById   : m:080b3a44fa9a5d27f2843819bc4687a4dca8f20e
CreatedByName : powershell-module-development
IP            : 1.1.1.26
Id            : e:i:ZocZFJ6s
UpdatedAt     : 
UpdatedById   : 
UpdatedByName : 

Alias         : NewIPAlias
CreatedAt     : 1765464092001
CreatedById   : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName : Zero Networks
IP            : 1.1.1.10
Id            : e:i:TgXxpb4l
UpdatedAt     : 
UpdatedById   : 
UpdatedByName : 
```

This cmdlet lists IP aliases.

### Example 2: Get IP Alias
```powershell
Get-ZNSettingsIPAlias -IPAliasId e:i:ZocZFJ6s
```

```output
CreatedById   : m:080b3a44fa9a5d27f2843819bc4687a4dca8f20e
CreatedByName : powershell-module-development
ItemAlias     : NewIpAlias
ItemCreatedAt : 1765466672902
ItemIP        : 1.1.1.26
ItemId        : e:i:ZocZFJ6s
ItemUpdatedAt : 
UpdatedById   : 
UpdatedByName : 
```

This cmdlet gets an IP alias.

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

### -Filters
JSON string URI encoded set of filters

```yaml
Type: System.String
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IPAliasId
IP Alias ID

```yaml
Type: System.String
Parameter Sets: Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Limit
Limit the return results

```yaml
Type: System.Int32
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Offset
Used to page through results

```yaml
Type: System.Int32
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -WithCount
return count of objects

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: $true
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsIPAliasItem

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsIPAliasList

## NOTES

## RELATED LINKS


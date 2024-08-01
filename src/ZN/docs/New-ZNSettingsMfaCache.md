---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/new-znsettingsmfacache
schema: 2.0.0
---

# New-ZNSettingsMfaCache

## SYNOPSIS
Creates a MFA Cache Policy.

## SYNTAX

```
New-ZNSettingsMfaCache -AssetLimit <Int32> -EntityId <String> -TtlMinutes <Int32> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Creates a MFA Cache Policy.

## EXAMPLES

### Example 1: Create MFA Cache policy
```powershell
$group = (Get-ZNGroup -Search Users).Items | where {$_.Domain -eq "posh.local" -and $_.Name -eq "Users"}
New-ZNSettingsMfaCache -AssetLimit 5 -EntityId $group.Id -TtlMinutes 720
```

```output
ItemAssetLimit ItemEntityId ItemTtlMinutes
-------------- ------------ --------------
             5 g:a:zy4ybEPY            720
```

This cmdlet creates a MFA cache policy.

## PARAMETERS

### -AssetLimit
.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EntityId
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

### -TtlMinutes
.

```yaml
Type: System.Int32
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsMfaCacheItem

## NOTES

## RELATED LINKS


---
external help file:
Module Name: ZeroNetworks
<<<<<<<< HEAD:help/zeronetworks/Get-ZNOtRule.md
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znotrule
schema: 2.0.0
---

# Get-ZNOtRule

## SYNOPSIS
Returns a list of switch rules.
========
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsmfacache
schema: 2.0.0
---

# Get-ZNSettingsMfaCache

## SYNOPSIS
Returns a list of MFA Cache Policies.
>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/docs/Get-ZNSettingsMfaCache.md

## SYNTAX

```
<<<<<<<< HEAD:help/zeronetworks/Get-ZNOtRule.md
Get-ZNOtRule [-AccountName <String>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of switch rules.
========
Get-ZNSettingsMfaCache [-Limit <Int32>] [-Offset <Int32>] [-WithCount] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of MFA Cache Policies.
>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/docs/Get-ZNSettingsMfaCache.md

## EXAMPLES

### Example 1: List MFA Cache policies
```powershell
(Get-ZNSettingsMfaCache).Items
```

```output
AssetLimit EntityId     EntityInfo                                                            TtlMinutes
---------- --------     ----------                                                            ----------
        10 g:a:3U1Z38mF ZeroNetworks.PowerShell.Cmdlets.Api.Models.SettingsMfaCacheEntityInfo        720
```

This cmdlet lists MFA cache policies.

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

### -PassThru
Returns true when the command succeeds

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

### -WithCount
return count of objects

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
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

<<<<<<<< HEAD:help/zeronetworks/Get-ZNOtRule.md
========
### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsMfaCacheList

>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/docs/Get-ZNSettingsMfaCache.md
## NOTES

## RELATED LINKS


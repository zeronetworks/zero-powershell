---
external help file:
Module Name: ZeroNetworks
<<<<<<<< HEAD:help/zeronetworks/New-ZNSettingsMfaCache.md
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/new-znsettingsmfacache
schema: 2.0.0
---

# New-ZNSettingsMfaCache

## SYNOPSIS
Creates a MFA Cache Policy.
========
online version: https://github.com/zeronetworkszeronetworks/update-znostype
schema: 2.0.0
---

# Update-ZNOSType

## SYNOPSIS
Set the OS type (Windows/Linux/Mac) for multiple assets
>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/docs/Update-ZNOSType.md

## SYNTAX

```
<<<<<<<< HEAD:help/zeronetworks/New-ZNSettingsMfaCache.md
New-ZNSettingsMfaCache -AssetLimit <Int32> -EntityId <String> -TtlMinutes <Int32> [-AccountName <String>]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Creates a MFA Cache Policy.

## EXAMPLES

### Example 1: Create a MFA cache policy
```powershell
New-ZNSettingsMfaCache -AssetLimit 10 -EntityId u:d:2HOfhbpY -TtlMinutes 400
```

```output
ItemAssetLimit ItemEntityId ItemTtlMinutes
-------------- ------------ --------------
            10 u:d:2HOfhbpY            400
```

This cmdlet creates a MFA cache policy.

## PARAMETERS

### -AccountName
this value is per customer / partner
========
Update-ZNOSType -AssetIds <String[]> -OSType <Int32> [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Set the OS type (Windows/Linux/Mac) for multiple assets

## EXAMPLES

### Example 1: Change asset OS type.
```powershell
$asset = Search-ZNAsset -Fqdn linux0.posh.local                
Update-ZNOSType -AssetIds @($asset.AssetId) -OSType 2
```

This cmdlet updates the OS Type for the asset.

## PARAMETERS

### -AssetIds
.
>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/docs/Update-ZNOSType.md

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: (Read-ZNJWTtoken $env:ZNApiKey).aud.split(".")[0]
Accept pipeline input: False
Accept wildcard characters: False
```

<<<<<<<< HEAD:help/zeronetworks/New-ZNSettingsMfaCache.md
### -AssetLimit
.
========
### -OSType
Possible osType: * `1' - Windows * `2' - Linux * `3' - Mac
>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/docs/Update-ZNOSType.md

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

<<<<<<<< HEAD:help/zeronetworks/New-ZNSettingsMfaCache.md
### -EntityId
.
========
### -PassThru
Returns true when the command succeeds
>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/docs/Update-ZNOSType.md

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

<<<<<<<< HEAD:help/zeronetworks/New-ZNSettingsMfaCache.md
### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISettingsMfaCacheItem

========
>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/docs/Update-ZNOSType.md
## NOTES

## RELATED LINKS


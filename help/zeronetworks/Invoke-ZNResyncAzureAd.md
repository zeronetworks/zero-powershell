---
external help file:
Module Name: ZeroNetworks
<<<<<<<< HEAD:help/zeronetworks/Invoke-ZNResyncAzureAd.md
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/invoke-znresyncazuread
schema: 2.0.0
---

# Invoke-ZNResyncAzureAd
========
online version: https://github.com/zeronetworkszeronetworks/remove-znsettingsnetworkprotectionpolicy
schema: 2.0.0
---

# Remove-ZNSettingsNetworkProtectionPolicy
>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/docs/Remove-ZNSettingsNetworkProtectionPolicy.md

## SYNOPSIS
Resync Azure AD

## SYNTAX

```
<<<<<<<< HEAD:help/zeronetworks/Invoke-ZNResyncAzureAd.md
Invoke-ZNResyncAzureAd [-AccountName <String>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
========
Remove-ZNSettingsNetworkProtectionPolicy -ProtectionPolicyId <String> [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/docs/Remove-ZNSettingsNetworkProtectionPolicy.md
```

## DESCRIPTION
Resync Azure AD

## EXAMPLES

<<<<<<<< HEAD:help/zeronetworks/Invoke-ZNResyncAzureAd.md
### Example 1: Resync Azure AD
```powershell
Invoke-ZNResyncAzureAd
```

This cmdlet starts an Azure AD resync.
========
### Example 1: Remove Network segmentation policy
```powershell
Remove-ZNSettingsNetworkProtectionPolicy -ProtectionPolicyId d63cf8e2-b21e-4097-98f3-137549de62c1
```

This cmdlet removes a Network segemntation policy.
>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/docs/Remove-ZNSettingsNetworkProtectionPolicy.md

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

## NOTES

## RELATED LINKS


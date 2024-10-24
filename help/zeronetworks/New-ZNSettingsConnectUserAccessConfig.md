---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/new-znsettingsconnectuseraccessconfig
schema: 2.0.0
---

# New-ZNSettingsConnectUserAccessConfig

## SYNOPSIS
Create a Connect User Access Configuration in Settings

## SYNTAX

```
New-ZNSettingsConnectUserAccessConfig [-AccountName <String>] [-AllowedRegions <String[]>]
 [-ConnectivityStateAfterReboot <Int32>] [-Description <String>] [-DstEntityIdsList <String[]>]
 [-ForceSsoAuthentication] [-LoginAuthorizedEntityAllowedAssetIdsList <String[]>]
 [-LoginAuthorizedEntityAllowedAssetsSourcesList <String[]>]
 [-LoginAuthorizedEntityAllowedUsersIdsList <String[]>]
 [-LoginAuthorizedEntityExcludedAssetIdsList <String[]>]
 [-LoginAuthorizedEntityExcludedUserIdsList <String[]>] [-Name <String>] [-SessionTtlHours <Int32>]
 [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Create a Connect User Access Configuration in Settings

## EXAMPLES

### Example 1: Create User Access Config
```powershell
$users = Get-ZNSettingsConnectUserAccessConfigCandidate | Where {$_.Name -eq 'zero'}
$destinations = Get-ZNSettingsConnectUserAccessConfigDestinationsCandidate | where {$_.Name -eq 'Internal subnets'}
New-ZNSettingsConnectUserAccessConfig -DstEntityIdsList @($destinations.id) -MembersIdsList @($users.id) -Name UAC -SessionTtlHours 168
```

This cmldet creates a User Access Config for Connect.

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

### -AllowedRegions
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectivityStateAfterReboot
dictionary: * `1` Previous connectivity state * `2` Connected (Always-on) * `3` Disconnected * `4` Signed out

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DstEntityIdsList
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ForceSsoAuthentication
.

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

### -LoginAuthorizedEntityAllowedAssetIdsList
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LoginAuthorizedEntityAllowedAssetsSourcesList
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LoginAuthorizedEntityAllowedUsersIdsList
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LoginAuthorizedEntityExcludedAssetIdsList
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LoginAuthorizedEntityExcludedUserIdsList
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
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

### -SessionTtlHours
.

```yaml
Type: System.Int32
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


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/update-zngroupsmfainboundpolicy
schema: 2.0.0
---

# Update-ZNGroupsMfaInboundPolicy

## SYNOPSIS
Updates an inbound MFA Policy.

## SYNTAX

```
Update-ZNGroupsMfaInboundPolicy -GroupId <String> -GroupType <String> -ReactivePolicyId <String>
 [-AdditionalPortsList <IPortsListItem[]>] [-Description <String>] [-DstPort <String>]
 [-DstProcessNames <String[]>] [-ExcludedSrcEntityInfos <String[]>] [-ExcludedSrcProcesses <String[]>]
 [-FallbackToLoggedOnUser] [-MfaMethods <Int32[]>] [-OverrideBuiltins] [-ProtocolType <Int32>]
 [-RuleDuration <Int32>] [-SrcEntityInfos <ReactivePolicyInboundBodySrcEntityInfosItem[]>]
 [-SrcProcessNames <String[]>] [-SrcUserInfos <ReactivePolicyInboundBodySrcUserInfosItem[]>] [-State <Int32>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Updates an inbound MFA Policy.

## EXAMPLES

### Example 1: Update inbound MFA policy for an group
```powershell
$group = Get-ZNGroup -Search "Domain controllers" | where {$_.Id -like "g:t:*"}
$mfaPolicy = Get-ZNGroupsMfaInboundPolicy -GroupId $group.Id -GroupType tag -ReactivePolicyId 244d0d8a-beb1-45f1-a2c4-e3372d605646
$mfaPolicy.ItemDstPort = $mfaPolicy.ItemDstPort+,",24"
Update-ZNGroupsMfaInboundPolicy -GroupId $group.Id -GroupType tag -ReactivePolicyId $mfaPolicy.ItemId -DstPort $mfaPolicy.ItemDstPort

DstEntityInfoAssetStatus     : 
DstEntityInfoAssetType       : 
DstEntityInfoDomain          : 
DstEntityInfoFqdn            : 
DstEntityInfoId              : g:t:01445453
DstEntityInfoIpv4Addresses   : 
DstEntityInfoIpv6Addresses   : 
DstEntityInfoName            : Domain controllers
DstEntityInfoOperatingSystem : 
DstEntityInfoProtectionState : 
DstEntityInfoSource          : 
ItemAdditionalPortsList      : {}
ItemCreatedAt                : 1694783423106
ItemCreatedBy                : m:13c49a4eb4fa90bbb948b6c8de5175ad2d36cfbc
ItemCreatedByName            : ModuleTesting
ItemDescription              : 
ItemDstPort                  : 24,443
ItemDstProcessNames          : {*}
ItemEnforcementSource        : 6
ItemExcludedSrcEntityInfos   : {}
ItemExcludedSrcProcesses     : {}
ItemFallbackToLoggedOnUser   : True
ItemId                       : 244d0d8a-beb1-45f1-a2c4-e3372d605646
ItemMfaMethods               : {4}
ItemOverrideBuiltins         : True
ItemProtocolType             : 6
ItemRuleDuration             : 6
ItemSrcEntityInfos           : {Any asset}
ItemSrcProcessNames          : {*}
ItemSrcUserInfos             : {Any user}
ItemState                    : 1
ItemUpdatedAt                : 1695055718897
StateAssetId                 : 
StateIsAssetConnected        : 
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 
```

This cmdlet updates an inbound MFA policy for an group.

## PARAMETERS

### -AdditionalPortsList
extra ports to open.
To construct, see NOTES section for ADDITIONALPORTSLIST properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IPortsListItem[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AsJob
Run the command as a job

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

### -Description
the policy description.

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

### -DstPort
[Parameter(ParameterSetName = 'UpdateExpanded')]
[ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
[System.String]
 destination asset(s).
${DstEntityInfoId},
 destination ports.

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

### -DstProcessNames
destination processes.

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

### -ExcludedSrcEntityInfos
excluded source assets

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

### -ExcludedSrcProcesses
Excluded source processes

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

### -FallbackToLoggedOnUser
fallback to logged on user enable/disable.

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

### -GroupId
Group Id

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

### -GroupType
Group Type

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

### -MfaMethods
MFA methods.

```yaml
Type: System.Int32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoWait
Run the command asynchronously

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

### -OverrideBuiltins
Override built in MFA policies

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

### -ProtocolType
protocol 6 for TCP, 17 for UDP.

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

### -ReactivePolicyId
policy Id

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

### -RuleDuration
the rule expiration.

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

### -SrcEntityInfos
source asset(s).
To construct, see NOTES section for SRCENTITYINFOS properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcEntityInfosItem[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SrcProcessNames
source processes.

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

### -SrcUserInfos
source user(s).
To construct, see NOTES section for SRCUSERINFOS properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcUserInfosItem[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -State
the policy state.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicy

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`ADDITIONALPORTSLIST <IPortsListItem[]>`: extra ports to open.
  - `[Ports <String>]`: 
  - `[ProtocolType <Int32?>]`: 

`SRCENTITYINFOS <ReactivePolicyInboundBodySrcEntityInfosItem[]>`: source asset(s).
  - `Id <String>`: 

`SRCUSERINFOS <ReactivePolicyInboundBodySrcUserInfosItem[]>`: source user(s).
  - `Id <String>`: 

## RELATED LINKS

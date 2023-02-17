---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworks/zn.api/update-znmfainboundpolicy
schema: 2.0.0
---

# Update-ZNMfaInboundPolicy

## SYNOPSIS
Updates an inbound MFA Policy.

## SYNTAX

```
Update-ZNMfaInboundPolicy -ReactivePolicyId <String> [-AdditionalPortsList <PortsListItem[]>]
 [-Description <String>] [-DstPort <String>] [-DstProcessNames <String[]>] [-FallbackToLoggedOnUser]
 [-MfaMethods <Int32[]>] [-ProtocolType <Int32>] [-RuleDuration <Int32>]
 [-SrcEntityInfos <ReactivePolicyInboundBodySrcEntityInfosItem[]>] [-SrcProcessNames <String[]>]
 [-SrcUserInfos <ReactivePolicyInboundBodySrcUserInfosItem[]>] [-State <Int32>] [-AsJob] [-NoWait] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Updates an inbound MFA Policy.

## EXAMPLES

### Example 1: Update an inbound MFA policy
```powershell
#Get the policy
$mfaPolicy = Get-ZNMfaInboundPolicy -ReactivePolicyId e1db180f-e435-498c-ae17-59651f3c3dc3
#add a port
$mfaPolicy.ItemDstPort = $mfaPolicy.ItemDstPort+,",24"
Update-ZNMfaInboundPolicy -ReactivePolicyId $mfaPolicy.ItemId -DstPort $mfaPolicy.ItemDstPort
```

```output
DstEntityInfoAssetStatus     : 1
DstEntityInfoAssetType       : 0
DstEntityInfoDomain          : 
DstEntityInfoFqdn            : linuxserver.zero.labs
DstEntityInfoId              : a:l:YjoLaKRG
DstEntityInfoIpv4Addresses   : {}
DstEntityInfoIpv6Addresses   : {}
DstEntityInfoManagers        : 
DstEntityInfoName            : linuxserver
DstEntityInfoOperatingSystem : 
DstEntityInfoProtectionState : 1
DstEntityInfoSource          : 15
ItemAdditionalPortsList      : {}
ItemCreatedAt                : 1666114167336
ItemCreatedBy                : m:86786c2f022cf2bd7dc38f165c98b4ee736c8c3b
ItemCreatedByName            : PowerShell
ItemDescription              : 
ItemDstPort                  : 22,24
ItemDstProcessNames          : {*}
ItemFallbackToLoggedOnUser   : True
ItemId                       : e1db180f-e435-498c-ae17-59651f3c3dc3
ItemMfaMethods               : {4}
ItemProtocolType             : 6
ItemRuleDuration             : 6
ItemSrcEntityInfos           : {Any asset}
ItemSrcProcessNames          : {*}
ItemSrcUserInfos             : {Nicholas DiCola}
ItemState                    : 1
ItemUpdatedAt                : 1676343746061
StateAssetId                 : a:l:YjoLaKRG
StateIsAssetConnected        : False
StateLasDisconnectedAt       : 
StateProtectAt               : 
StateProtectionState         : 1
```

This cmdlet will update an inbound MFA policy

## PARAMETERS

### -AdditionalPortsList
extra ports to open.
To construct, see NOTES section for ADDITIONALPORTSLIST properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem[]
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


`ADDITIONALPORTSLIST <PortsListItem[]>`: extra ports to open.
  - `[Ports <String>]`: 
  - `[ProtocolType <Int32?>]`: 

`SRCENTITYINFOS <ReactivePolicyInboundBodySrcEntityInfosItem[]>`: source asset(s).
  - `Id <String>`: 

`SRCUSERINFOS <ReactivePolicyInboundBodySrcUserInfosItem[]>`: source user(s).
  - `Id <String>`: 

## RELATED LINKS


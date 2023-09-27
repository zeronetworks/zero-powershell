---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/Approve-ZNAssetInboundAllowRuleReview
schema: 2.0.0
---

# Approve-ZNAssetInboundAllowRuleReview

## SYNOPSIS
Approve a "pending review" rule with or without changes

## SYNTAX

### ApproveExpanded (Default)
```
Approve-ZNAssetInboundAllowRuleReview -AssetId <String> -RuleId <String> [-AsJob] [-NoWait] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

### ApproveWithChangesExpanded
```
Approve-ZNAssetInboundAllowRuleReview -AssetId <String> -RuleId <String> -Reason <Object>
 [-Description <String>] [-Details <String>] [-ExcludedLocalIdsList <String[]>] [-ExpiresAt <Int64>]
 [-LocalEntityId <String>] [-LocalProcessesList <String[]>] [-PortsList <IPortsListItem[]>]
 [-RemoteEntityIdsList <String[]>] [-State <Int32>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Approve a "pending review" rule with or without changes

## EXAMPLES

### Example 1: Approve a rule for a specific asset
```powershell
$asset = Search-ZNAsset -Fqdn linux0.posh.local
Approve-ZNAssetInboundAllowRuleReview -AssetId $asset -RuleId '9d275288-4fc3-46e5-a5a0-ff0626214b87'

```

This cmdlet approves a rule pending review for a specific asset.

### Example 2: Approve a rule for a specific asset with changes
```powershell
Approve-ZNAssetInboundAllowRuleReview -AssetId $asset -RuleId 'e4a170be-c192-414a-9d36-380a4483583a' -Description "new description" -Reason "Other" -Details "add description"

```

This cmdlet also supports changing the rule details upon approval.

## PARAMETERS

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

### -AssetId
Asset Id

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

### -Description
the rule description.

```yaml
Type: System.String
Parameter Sets: ApproveWithChangesExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Details
Comments

```yaml
Type: System.String
Parameter Sets: ApproveWithChangesExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludedLocalIdsList
[-RuleInfoDescription \<String\>] 
 excluded destination asset(s).

```yaml
Type: System.String[]
Parameter Sets: ApproveWithChangesExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExpiresAt
[-RuleInfoExcludedLocalIdsList \<String[]\>] 
 when the rule should expiry.

```yaml
Type: System.Int64
Parameter Sets: ApproveWithChangesExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LocalEntityId
[-RuleInfoExpiresAt \<Int64\>] 
 The Destination asset(s).

```yaml
Type: System.String
Parameter Sets: ApproveWithChangesExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LocalProcessesList
[-RuleInfoLocalEntityId \<String\>] 
 the destination process paths.

```yaml
Type: System.String[]
Parameter Sets: ApproveWithChangesExpanded
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

### -PortsList
[-RuleInfoLocalProcessesList \<String[]\>]
 the destination ports and protocols.
To construct, see NOTES section for PORTSLIST properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IPortsListItem[]
Parameter Sets: ApproveWithChangesExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Reason
Review Reason int32

```yaml
Type: System.Object
Parameter Sets: ApproveWithChangesExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemoteEntityIdsList
[-RuleInfoPortsList \<IPortsListItem[]\>] 
 the source asset(s).

```yaml
Type: System.String[]
Parameter Sets: ApproveWithChangesExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleId
rule Id

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

### -State
[-RuleInfoRemoteEntityIdsList \<String[]\>] 
 the rule state.

```yaml
Type: System.Int32
Parameter Sets: ApproveWithChangesExpanded
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.Any

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`PORTSLIST <IPortsListItem[]>`: [-RuleInfoLocalProcessesList <String[]>]  the destination ports and protocols.
  - `[Ports <String>]`: 
  - `[ProtocolType <Int32?>]`: 

## RELATED LINKS


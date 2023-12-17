---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/remove-znassetotmfaoutboundpolicy
schema: 2.0.0
---

# Remove-ZNAssetOtmfaOutboundPolicy

## SYNOPSIS
Returns an empty object.

## SYNTAX

```
Remove-ZNAssetOtmfaOutboundPolicy -AssetId <String> -ReactivePolicyId <String> [-PassThru] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns an empty object.

## EXAMPLES

### Example 1: Delete outbound MFA policy
```powershell
$otasset = Get-ZNAssetsOt | where {$_.Fqdn -eq "ot1777"}
Remove-ZNAssetMfaOutboundPolicy -AssetId $otAsset.id -ReactivePolicyId 32951fee-7f70-4974-b90d-c50182bbdeb3

```

This cmdlet deletes an outbound MFA policy.

## PARAMETERS

### -AssetId
assetId to filter on

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

### -ReactivePolicyId
The id of the MFA policy

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

## NOTES

## RELATED LINKS


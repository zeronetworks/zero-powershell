---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/remove-znmfaoutboundpolicy
schema: 2.0.0
---

# Remove-ZNMfaOutboundPolicy

## SYNOPSIS
Returns an empty object.

## SYNTAX

```
Remove-ZNMfaOutboundPolicy -ReactivePolicyId <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns an empty object.

## EXAMPLES

### Example 1: Remove an outbound MFA Policy
```powershell
$policy = Get-ZNMfaOutboundPolicy | where {$_.Description -eq "Test Policy"}
Remove-ZNMfaOutboundPolicy -ReactivePolicyId $policy.Id
```

This cmdlet deletes an outbound MFA policy from the environment.

## PARAMETERS

### -ReactivePolicyId
The id of the rule

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAny

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS

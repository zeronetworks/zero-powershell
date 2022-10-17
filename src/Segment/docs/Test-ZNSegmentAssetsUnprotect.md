---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/test-znsegmentassetsunprotect
schema: 2.0.0
---

# Test-ZNSegmentAssetsUnprotect

## SYNOPSIS
Validate assets for removing from protection

## SYNTAX

```
Test-ZNSegmentAssetsUnprotect -Items <String[]> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Validate assets for removing from protection

## EXAMPLES

### Example 1: Test an asset is can be removed from protection
```powershell
Search-ZNSegmentAsset -Fqdn dc1.zero.labs
Test-ZNSegmentAssetsUnprotect -Items "a:a:ZgBWOMyc"
```

```output
1
```

This cmdlet will test if an asset is can be removed from segmentation.

## PARAMETERS

### -Items
.

```yaml
Type: System.String[]
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

### System.Int32

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IApiError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

## NOTES

ALIASES

## RELATED LINKS


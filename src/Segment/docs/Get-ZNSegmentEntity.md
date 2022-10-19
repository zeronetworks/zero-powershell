---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/get-znsegmententity
schema: 2.0.0
---

# Get-ZNSegmentEntity

## SYNOPSIS
Get an entity

## SYNTAX

```
Get-ZNSegmentEntity [-EntityId <String>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Get an entity

## EXAMPLES

### Example 1: Get an entity
```powershell
Get-ZNSegmentEntity -EntityId a:a:ZgBWOMyc
```

```output
AssetStatus AssetType Domain    Fqdn          IPV4Addresses  IPV6Addresses               Id           Name OperatingSystem                   ProtectionState Source
----------- --------- ------    ----          -------------  -------------               --           ---- ---------------                   --------------- ------
2           2         zero.labs dc1.zero.labs {192.168.10.0} {fe80::8863:40e6:ced3:75a8} a:a:ZgBWOMyc DC1  Windows Server 2012 R2 Datacenter 10              3
```

This cmdlet gets an entity for the environment.

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

### -EntityId
the entityId to get

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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.Asset

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.Group

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.User

## NOTES

ALIASES

## RELATED LINKS


---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/new-znadsecondarysetting
schema: 2.0.0
---

# New-ZNAdSecondarySetting

## SYNOPSIS
Add a secondary AD settings in Asset Managment

## SYNTAX

```
New-ZNAdSecondarySetting -DomainId <String> -Dc <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Add a secondary AD settings in Asset Managment

## EXAMPLES

### Example 1: Add a new secondary AD domain
```powershell
New-ZNAdSecondarySetting -DomainId newdomain.zero.labs -Dc dc1.newdomain.zero.labs
```

The cmdlet will create a new secondary AD domain in Active Directory under Asset Management.

## PARAMETERS

### -Dc
The domain controller

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

### -DomainId
The fqdn of the domain

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


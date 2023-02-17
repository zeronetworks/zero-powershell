---
external help file:
Module Name: ZN.Api
online version: https://github.com/zeronetworkszn.api/update-znprotectionpolicy
schema: 2.0.0
---

# Update-ZNProtectionPolicy

## SYNOPSIS
Returns the updated settings for the protection policy.

## SYNTAX

```
Update-ZNProtectionPolicy -ProtectionPolicyId <String> [-MinQueueDays <Int32>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns the updated settings for the protection policy.

## EXAMPLES

### Example 1: Update a protection policy
```powershell
$pp = Get-ZNProtectionPolicy | where {$_.GroupId -eq "g:t:01276c2c"}
Update-ZNProtectionPolicy -ProtectionPolicyId $pp.Id -MinQueueDays 30
```

```output
CreatedByEnforcementSource   : 4
CreatedById                  : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                : Zero Networks
CreatedByUserRole            : 1
GroupInfoDomain              : tag
GroupInfoHasProtectionPolicy : False
GroupInfoId                  : g:t:01276c2c
GroupInfoName                : Domain controllers
ItemCreatedAt                : 1665679791212
ItemGroupId                  : g:t:01276c2c
ItemId                       : 8221cd9a-7de5-4915-b8e5-b46d8cc96e49
ItemInitialProtectAt         : 1668272400000
ItemMinQueueDays             : 30
ItemUpdatedAt                : 1665680065342
```

This cmdlet will update a protection policy for the environment.

## PARAMETERS

### -MinQueueDays
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

### -ProtectionPolicyId
The id of the protection policy

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IProtectionPolicy

## NOTES

ALIASES

## RELATED LINKS


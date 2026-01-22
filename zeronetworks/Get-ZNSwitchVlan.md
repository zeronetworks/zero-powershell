---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znswitchvlan
schema: 2.0.0
---

# Get-ZNSwitchVlan

## SYNOPSIS
Gets switchvlans

## SYNTAX

```
Get-ZNSwitchVlan -SwitchId <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Gets switchvlans

## EXAMPLES

### Example 1: List switch vlans
```powershell
(Get-ZNSwitchVlan -SwitchId w:c:HCPh7Xoc).Items
```

```output
InterfacesList                                                                                  Name
--------------                                                                                  ----
{AppGigabitEthernet1/0/1, GigabitEthernet1/0/10, GigabitEthernet1/0/11, GigabitEthernet1/0/12…} 1
{GigabitEthernet1/0/1}                                                                          3
{}                                                                                              4
{}                                                                                              5
```

This cmdlet lists switch vlans.

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

### -SwitchId
switch to delete

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISwitchVlanList

## NOTES

## RELATED LINKS


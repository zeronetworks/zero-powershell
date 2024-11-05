---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/new-znportslist
schema: 2.0.0
---

# New-ZNPortsList

## SYNOPSIS
Create a in-memory object for PortsList

## SYNTAX

### Protocol (Default)
```
New-ZNPortsList -Protocol <String> [-Ports <String>] [<CommonParameters>]
```

### Empty
```
New-ZNPortsList -Empty [<CommonParameters>]
```

## DESCRIPTION
Create a in-memory object for PortsList

## EXAMPLES

### Example 1: Create a portsList for rule objects
```powershell
$portsList = New-ZNPortsList -Protocol TCP -Ports "44,45"
```

This cmdlet creates a portsList for use in other cmdlets.
It returns the created object.

### Example 2: Create a portsList with TCP and UDP
```powershell
$portsList = @()
$tcp = New-ZNPortsList -Protocol TCP -Ports "44"
$udp = New-ZNPortsList -Protocol UDP -Ports "44"
$portsList +=$tcp
$portsList +=$udp
$portsList
```

```output
Ports ProtocolType
----- ------------
44    6
44    17
```

This is an example of how to build a portsList with both TCP and UDP ports.

## PARAMETERS

### -Empty
Empty port list

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: Empty
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Ports
List of port numbers

```yaml
Type: System.String
Parameter Sets: Protocol
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Protocol
Protocol

```yaml
Type: System.String
Parameter Sets: Protocol
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem

## NOTES

## RELATED LINKS


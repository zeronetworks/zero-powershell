---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/new-znprotocolslist
schema: 2.0.0
---

# New-ZNProtocolsList

## SYNOPSIS
Create a in-memory object for protcolList

## SYNTAX

### Protocol (Default)
```
New-ZNProtocolsList -Protocol <String> [-Ports <String>] [-RemotePorts <String>] [<CommonParameters>]
```

### Empty
```
New-ZNProtocolsList -Empty [<CommonParameters>]
```

## DESCRIPTION
Create a in-memory object for protocolList

## EXAMPLES

### Example 1: Create protocols list
```powershell
$protocolsList = New-ZNProtocolsList -Protocol tcp -Ports 111
```

This cmdlet creates a protocol list.

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

### -RemotePorts
Remote Ports

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.SwitchProtocolsListBodyItem

## NOTES

## RELATED LINKS


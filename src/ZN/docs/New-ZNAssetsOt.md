---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/new-znassetsot
schema: 2.0.0
---

# New-ZNAssetsOt

## SYNOPSIS
Returns an empty object.

## SYNTAX

```
New-ZNAssetsOt -DisplayName <String> -Ipv4 <String> -Type <Single> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Returns an empty object.

## EXAMPLES

### Example 1: Create an OT/IoT Asset
```powershell
New-ZNAssetsOt -DisplayName webcam2 -Ipv4 "192.168.10.30" -Type 4 
```

This cmdlet will create an OT/IoT asset in the environment.
Support Asset Types:
4 = IP Camera
5 = Smart TV
6 = Factory Controller
7 = Medical Device
8 = Printer
9 = Scanner
10 = Smart Card Reader
11 = Router,
12 = Hypervisor
13 = PLC
14 = HMI
15 = Switch
16 = Terminal Station
17 = RTU
18 = Wireless Access Point
19 = Historian
20 = Game Console
21 = Fire Alarm
22 = UPS
23 = Storage Appliance
24 = Virtualization Appliance
25 = Firewall Appliance
26 = Security Scanner
27 = Security Controller
28 = Door Lock
29 = Biometric Entry System
30 = HVA

## PARAMETERS

### -DisplayName
.

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

### -Ipv4
.

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

### -Type
dictionary:* `4` CAMERA* `5` TV* `6` FACTORY_CONTROLLER* `7` MEDICAL_DEVICE* `8` PRINTER* `9` SCANNER* `10` SMART_CARD_READER* `11` ROUTER* `12` HYPERVISOR* `13` PLC* `14` HMI* `15` SWITCH* `16` TERMINAL_STATION* `17` RTU* `18` WIRELESS_ACCESS_POINT* `19` HISTORIAN* `20` GAME_CONSOLE* `21` FIRE_ALARM* `22` UPS* `23` STORAGE_APPLIANCE* `24` VIRTUALIZATION_APPLIANCE* `25` FIREWALL_APPLIANCE* `26` SECURITY_SCANNER* `27` SECURITY_CONTROLLER* `28` DOOR_LOCK* `29` BIOMETRIC_ENTRY_SYSTEM* `30` HVAC* `31` ROOM_SCHEDULER

```yaml
Type: System.Single
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


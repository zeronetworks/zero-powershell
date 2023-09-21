---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znotgroup
schema: 2.0.0
---

# Get-ZNOtGroup

## SYNOPSIS
Returns a list of OT/IoT groups.

## SYNTAX

```
Get-ZNOtGroup [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of OT/IoT groups.

## EXAMPLES

### Example 1: List OT Groups
```powershell
Get-ZNOTGroup

Id           Name                    Description                                                DirectMembersCount
--           ----                    -----------                                                ------------------
g:o:0T445453 Biometric entry systems Includes all biometric entry systems in the environment    0
g:o:04445453 Cameras                 Includes all camera devices in the environment             27
g:o:0A445453 Card readers            Includes all card readers in the environment               0
g:o:0S445453 Door locks              Includes all door locks in the environment                 0
g:o:06445453 Factory controllers     Includes all factory controller devices in the environment 0
g:o:0L445453 Fire alarms             Includes all fire alarms in the environment                0
g:o:0P445453 Firewall appliance      Includes all firewall appliances in the environment        0
g:o:0K445453 Game consoles           Includes all game consoles in the environment              0
g:o:0J445453 Historians              Includes all Historian devices in the environment          0
g:o:0E445453 HMIs                    Includes all HMI devices in the environment                0
```

The cmdlet gets all groups for the environment

### Example 2: Get the next page of custom groups
```powershell
Get-ZNOTGroup -offset 10

Id           Name                 Description                                          DirectMembersCount
--           ----                 -----------                                          ------------------
g:o:0U445453 HVACs                Includes all HVAC devices in the environment         0
g:o:0C445453 Hypervisors          Includes all hypervisors in the environment          0
g:o:07445453 Medical devices      Includes all medical devices in the environment      0
g:o:0D445453 PLCs                 Includes all PLC devices in the environment          0
g:o:08445453 Printers             Includes all printers in the environment             0
g:o:0V445453 Room Schedulers      Includes all room schedulers in the environment      0
g:o:0B445453 Routers              Includes all routers in the environment              0
g:o:0H445453 RTUs                 Includes all RTU devices in the environment          0
g:o:09445453 Scanners             Includes all Scanners in the environment             0
g:o:0R445453 Security controllers Includes all security controllers in the environment 0
```

Use offset to get the next page of custom groups.

### Example 3: Find a group
```powershell
Get-ZNOtGroup -Search HVAC

Id           Name  Description                                  DirectMembersCount
--           ----  -----------                                  ------------------
g:o:0U445453 HVACs Includes all HVAC devices in the environment 0
```

Use the search parameter to search by Name property.

## PARAMETERS

### -Filters
JSON string URI encoded set of fiters

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

### -Limit
Limit the return results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Offset
Used to page through results

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

### -Search
Test to search for

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IGroup

## NOTES

ALIASES

## RELATED LINKS


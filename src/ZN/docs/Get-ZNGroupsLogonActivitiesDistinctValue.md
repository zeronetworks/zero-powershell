---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-zngroupslogonactivitiesdistinctvalue
schema: 2.0.0
---

# Get-ZNGroupsLogonActivitiesDistinctValue

## SYNOPSIS
Returns a list of distinct values for a field in logon activities.

## SYNTAX

```
Get-ZNGroupsLogonActivitiesDistinctValue -FieldName <String> -GroupId <String> -GroupType <String>
 [-AccountName <String>] [-From <Int64>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of distinct values for a field in logon activities.

## EXAMPLES

### Example 1: List distinct value for a logon activities field
```powershell
$group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.Domain -eq "tag"}
(Get-ZNGroupsLogonActivitiesDistinctValue -GroupId $group.id -GroupType tag -FieldName process).ItemAggregations
```

```output
ActivitiesDistictValuePort   : 
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 4
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : svchost.exe (UserManager)
PortProtocol                 : 
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            :
```

This cmdlet lists the distinct values for a logon activities field.

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

### -FieldName
The field name to filter on

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

### -From
startTime in epoch(ms)

```yaml
Type: System.Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupId
groupId to filter on

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

### -GroupType
group type to filter on

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IActivitiesDistictValuesList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


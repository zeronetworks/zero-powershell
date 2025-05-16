---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-zngroupsnetworkactivitiesdistinctvalue
schema: 2.0.0
---

# Get-ZNGroupsNetworkActivitiesDistinctValue

## SYNOPSIS
Returns a list of distinct values for a field in network activities.

## SYNTAX

```
Get-ZNGroupsNetworkActivitiesDistinctValue -FieldName <String> -GroupId <String> -GroupType <String>
 [-AccountName <String>] [-From <Int64>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of distinct values for a field in network activities.

## EXAMPLES

### Example 1: List distinct value for a logon activities field
```powershell
$group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.Domain -eq "tag"}
(Get-ZNGroupsNetworkActivitiesDistinctValue -GroupId $group.id -GroupType tag -FieldName dstPort).ItemAggregations
```

```output
ActivitiesDistictValuePort   : 80
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 7907
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 389
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 6362
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 135
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 5645
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 443
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 4739
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 49676
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 3798
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 389
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 3610
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 17
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 49668
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 2562
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 445
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 2368
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 123
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 1386
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 17
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 3268
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 1195
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 88
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 978
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 49689
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 530
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 0
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 426
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 1
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 49687
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 329
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 3389
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 63
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 8009
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 46
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 137
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 34
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 17
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 443
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 15
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 17
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 22
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 13
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 464
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 5
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 0
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 2
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 58
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 

ActivitiesDistictValuePort   : 636
AssetBreakGlassActivated     : 
AssetDomain                  : 
AssetId                      : 
AssetIdentityProtectionState : 
AssetName                    : 
AssetProtectionState         : 
AssetRpcProtectionState      : 
AssetType                    : 
Count                        : 1
Id                           : 
LogonTypeAndStatusEventType  : 
LogonTypeAndStatusLogonType  : 
Name                         : 
PortProtocol                 : 6
WfpFilterLayer               : 
WfpFilterName                : 
WfpFilterSublayer            : 
```

This cmdlet lists the distinct values for a network activities field.

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


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znswitchot
schema: 2.0.0
---

# Get-ZNSwitchOt

## SYNOPSIS
Gets OT assets for a swtich

## SYNTAX

```
Get-ZNSwitchOt -SwitchId <String> [-AccountName <String>] [-Filters <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Order <String>] [-OrderColumns <String>] [-ShowInactive] [<CommonParameters>]
```

## DESCRIPTION
Gets OT assets for a swtich

## EXAMPLES

### Example 1: List switch OT assets
```powershell
(Get-ZNSwitchOt -SwitchId w:c:IBlczUkw).Items 
```

```output
AddedAt                      : 
AddedById                    : 
AddedByName                  : 
AssetStatus                  : 13
AssetType                    : 22
AssignedDeploymentId         : 
AssignedDeploymentName       : 
BreakGlassActivated          : False
DistinguishedName            : 
Domain                       : 
EnvironmentGroupId           : 
EnvironmentGroupName         : 
Fqdn                         : otv2.posh.llocal
Guid                         : 
HealthStateHealthIssuesList  : {}
HealthStateHealthStatus      : 4
IPV4Addresses                : {192.168.200.2}
IPV6Addresses                : {}
Id                           : a:t:ffPDi031
IdNamePairId                 : 
IdentityProtectAt            : 
IdentityProtectedAt          : 
IdentityProtectionState      : 1
InactiveReason               : 3
InactiveSince                : 
LastLogonReplicated          : 
Name                         : otv2
OperatingSystem              : 
PasswordUpdateTime           : 
PreferredDeploymentId        : 
PreferredDeploymentId1       : 
PreferredDeploymentName      : 
PrincipalName                : 
ProtectAt                    : 
ProtectedAt                  : 
ProtectionState              : 1
RpcMonitored                 : False
RpcProtectAt                 : 
RpcProtectedAt               : 
RpcProtectionState           : 1
ServicePrincipleNames        : 
Sid                          : 
Source                       : 7
StateAssetId                 : 
StateIdentityProtectAt       : 
StateIdentityProtectedAt     : 
StateIdentityProtectionState : 
StateIsAssetConnected        : 
StateLastConnectedAt         : 
StateLastDisconnectedAt      : 
StateProtectAt               : 
StateProtectedAt             : 
StateProtectionState         : 
StateRpcProtectAt            : 
StateRpcProtectedAt          : 
StateRpcProtectionState      : 
UserAccountControl           :
```

This cmdlet lists switch OT assets.

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

### -Filters
JSON string URI encoded set of filters

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
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Order
What order to sort the results

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

### -OrderColumns
what column to order on

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

### -ShowInactive
show inactive assets

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


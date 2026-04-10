---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znconnectpoliciesdestinationscandidate
schema: 2.0.0
---

# Get-ZNConnectPoliciesDestinationsCandidate

## SYNOPSIS
Returns a list of candidates for Connect Policy destinations.

## SYNTAX

```
Get-ZNConnectPoliciesDestinationsCandidate [-AccountName <String>] [-Limit <Int32>] [-Offset <Int32>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of candidates for Connect Policy destinations.

## EXAMPLES

### Example 1: List candidates for Destinations in a Connect Policy
```powershell
(Get-ZNConnectPoliciesDestinationsCandidate).Items
```

```output
AssetStatus                 : 
AssetType                   : 
BreakGlassActivated         : 
Domain                      : system
Guid                        : 
HasIdentityProtectionPolicy : 
HasNetworkProtectionPolicy  : 
Id                          : g:s:14da83cd
IdentityProtectionState     : 
IsQuarantined               : 
Name                        : Internal subnets
OtLocattionInterfaceName    : 
OtLocattionName             : 
OtLocattionSwitchId         : 
ProtectionState             : 
RpcProtectionState          : 
Sid                         : 

AssetStatus                 : 
AssetType                   : 
BreakGlassActivated         : 
Domain                      : OT/IoT
Guid                        : 89fb6426-1f11-47fa-ae5f-708c0e501585
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:o:1Lda83cd
IdentityProtectionState     : 
IsQuarantined               : 
Name                        : 3D Printer
OtLocattionInterfaceName    : 
OtLocattionName             : 
OtLocattionSwitchId         : 
ProtectionState             : 
RpcProtectionState          : 
Sid                         : 

AssetStatus                 : 
AssetType                   : 
BreakGlassActivated         : 
Domain                      : posh.local
Guid                        : e45b0e81-3f2a-4529-af87-c77fedc49429
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:a:5C0h1yd5
IdentityProtectionState     : 
IsQuarantined               : 
Name                        : Access Control Assistance Operators
OtLocattionInterfaceName    : 
OtLocattionName             : 
OtLocattionSwitchId         : 
ProtectionState             : 
RpcProtectionState          : 
Sid                         : S-1-5-32-579

AssetStatus                 : 
AssetType                   : 
BreakGlassActivated         : 
Domain                      : OT/IoT
Guid                        : 9f8c5ee7-d67f-4319-9c19-d583095c5520
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:o:1Kda83cd
IdentityProtectionState     : 
IsQuarantined               : 
Name                        : Access control devices
OtLocattionInterfaceName    : 
OtLocattionName             : 
OtLocattionSwitchId         : 
ProtectionState             : 
RpcProtectionState          : 
Sid                         : ...
```

This cmdlet lists destination candidates for a Connect policy.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsOrGroupsList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


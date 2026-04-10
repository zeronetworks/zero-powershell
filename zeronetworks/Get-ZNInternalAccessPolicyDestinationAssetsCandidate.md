---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-zninternalaccesspolicydestinationassetscandidate
schema: 2.0.0
---

# Get-ZNInternalAccessPolicyDestinationAssetsCandidate

## SYNOPSIS
Returns a list of destunation assets candidates for an internal access policy.

## SYNTAX

```
Get-ZNInternalAccessPolicyDestinationAssetsCandidate [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of destunation assets candidates for an internal access policy.

## EXAMPLES

### Example 1: List destination candiates
```powershell
(Get-ZNInternalAccessPolicyDestinationAssetsCandidate).Items
```

```output
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
Domain                      : posh.local
Guid                        : eb2f1e5b-efb4-4c72-ab26-1ffb0b370775
HasIdentityProtectionPolicy : False
HasNetworkProtectionPolicy  : False
Id                          : g:a:HJWKrlHo
IdentityProtectionState     : 
IsQuarantined               : 
Name                        : Account Operators
OtLocattionInterfaceName    : 
OtLocattionName             : 
OtLocattionSwitchId         : 
ProtectionState             : 
RpcProtectionState          : 
Sid                         : S-1-5-32-548
```

This cmdlet lists destination assets candidates for an Internal Access Policy.

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


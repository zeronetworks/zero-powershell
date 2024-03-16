---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetotmfaoutboundpoliciesdestinationcandidate
schema: 2.0.0
---

# Get-ZNAssetOtmfaOutboundPoliciesDestinationCandidate

## SYNOPSIS
Returns a list of destination candidates on outbound MFA policies.

## SYNTAX

```
Get-ZNAssetOtmfaOutboundPoliciesDestinationCandidate -AssetId <String> [-Limit <Int32>] [-Offset <Int32>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of destination candidates on outbound MFA policies.

## EXAMPLES

### Example 1: List destination candidates for an MFA policy of an OT asset
```powershell
$otasset = Get-ZNAssetsOt | where {$_.Fqdn -eq "ot1777"}
 (Get-ZNAssetOtmfaOutboundPoliciesDestinationCandidate -AssetId $otasset.id).Items
```

```output
Domain HasProtectionPolicy Id           Name
------ ------------------- --           ----
                           g:s:17445453 Segmented OT/IoT devices
OT/IoT False               g:o:0T445453 Biometric entry systems
OT/IoT False               g:o:04445453 Cameras
OT/IoT False               g:o:0A445453 Card readers
OT/IoT False               g:o:0S445453 Door locks
OT/IoT False               g:o:06445453 Factory controllers
OT/IoT False               g:o:0L445453 Fire alarms
OT/IoT False               g:o:0P445453 Firewall appliance
OT/IoT False               g:o:0K445453 Game consoles
OT/IoT False               g:o:0J445453 Historians
OT/IoT False               g:o:0E445453 HMIs
                           a:t:OeG7qsVV ot1777
                           a:t:u7QxbAUn ot1933845
                           a:t:Mid11kmS ot20245
                           a:t:cC6njhiS ot202879
                           a:t:4bNJaK7P ot261406
                           a:t:m9m4JIHj ot274123
                           a:t:e9z4KHtm ot285039
                           a:t:gVwo8dSe ot302331
                           a:t:LLkiZLdF ot357111
                           a:t:79SpShM5 ot382777
```

This cmdlet returns possible destination candidates for an MFA policy for an OT asset.

## PARAMETERS

### -AssetId
assetId to filter on

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ICandidatesList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znassetinboundotrulesexcludeddestinationcandidate
schema: 2.0.0
---

# Get-ZNAssetInboundOtRulesExcludedDestinationCandidate

## SYNOPSIS
Returns a list of excluded destination candidates for Asset Inbound rules.

## SYNTAX

```
Get-ZNAssetInboundOtRulesExcludedDestinationCandidate -AssetId <String> [-AccountName <String>]
 [-Cursor <Int64>] [-Limit <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of excluded destination candidates for Asset Inbound rules.

## EXAMPLES

### Example 1: List excluded destination candidate for OT inbound rule
```powershell
(Get-ZNAssetInboundOtRulesExcludedDestinationCandidate -AssetId $asset).Items
```

```output
AssetType BreakGlassActivated Domain     Email Guid                                 HasIdentityProtectionPolicy HasNetworkProtectionPolicy
--------- ------------------- ------     ----- ----                                 --------------------------- --------------------------
                              OT/IoT           89fb6426-1f11-47fa-ae5f-708c0e501585                       False                      False
                              posh.local       e45b0e81-3f2a-4529-af87-c77fedc49429                       False                      False
                              OT/IoT           9f8c5ee7-d67f-4319-9c19-d583095c5520                       False                      False
                              OT/IoT           3a9a24d4-b5a3-4329-b0c0-d4c2388dee07                       False                      False
                              posh.local       eb2f1e5b-efb4-4c72-ab26-1ffb0b370775                       False                      False
5         False                                                                                                                           
                              posh.local       3f831f70-8387-4052-86a1-35bfad5e4cd5                       False                      False
                              posh.local       f21f9294-e7ba-4cab-a941-420d1329c68c                       False                      False
                              system           d19151a0-94fc-4e4b-90e0-4df378e29bd6                       False                      False
                              system           de68605e-8623-4106-90a9-db351c3b80dd                       False                      False  
```

This cmdlet lists excluded destination candidates for an OT inbound rule.

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

### -Cursor
cursor position to start at

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


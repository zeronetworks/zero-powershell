---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znassetinboundotrulessourcecandidate
schema: 2.0.0
---

# Get-ZNAssetInboundOtRulesSourceCandidate

## SYNOPSIS
Returns a list of source candidates for Inbound rules.

## SYNTAX

```
Get-ZNAssetInboundOtRulesSourceCandidate -AssetId <String> [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of source candidates for Inbound rules.

## EXAMPLES

### Example 1: List source candidate for OT inbound rule
```powershell
(Get-ZNAssetInboundOtRulesSourceCandidate -AssetId $asset).Items
```

```output
AssetType BreakGlassActivated Domain Email Guid                                 HasIdentityProtectionPolicy HasNetworkProtectionPolicy Id
--------- ------------------- ------ ----- ----                                 --------------------------- -------------------------- --  
                                                                                                                                       b:1…
                              system       0f17a1b7-3047-4007-8dcc-159a417772a6 False                       False                      g:s…
                              OT/IoT       89fb6426-1f11-47fa-ae5f-708c0e501585 False                       False                      g:o…
                              OT/IoT       9f8c5ee7-d67f-4319-9c19-d583095c5520 False                       False                      g:o…
                              OT/IoT       3a9a24d4-b5a3-4329-b0c0-d4c2388dee07 False                       False                      g:o…
5         False                                                                                                                        a:t…
2         False                                                                                                                        a:n…
                              OT/IoT       acb54998-627c-4369-9e2f-2f6e87fd53fe False                       False                      g:o…
                              OT/IoT       bf7d9499-5e1c-4e3a-b03d-23fa02c812c3 False                       False                      g:o…
                              OT/IoT       dd612764-7d89-4b83-970c-a14948f0ed25 False                       False                      g:o…
                              OT/IoT       992d38bd-afca-4a22-890c-ee430e14ad17 False                       False                      g:o…
                              OT/IoT       2c7485f4-6883-4790-b25e-25b8245557ce False                       False                      g:o…                   False  
```

This cmdlet lists source candidates for an OT inbound rule.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ICandidatesList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


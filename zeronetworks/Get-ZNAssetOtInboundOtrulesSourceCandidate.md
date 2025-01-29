---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znassetotinboundotrulessourcecandidate
schema: 2.0.0
---

# Get-ZNAssetOtInboundOtrulesSourceCandidate

## SYNOPSIS
Returns a list of source candidates for Inbound rules.

## SYNTAX

```
Get-ZNAssetOtInboundOtrulesSourceCandidate -AssetId <String> [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of source candidates for Inbound rules.

## EXAMPLES

### Example 1: List source candidates for an OT Inbound Rule
```powershell
(Get-ZNAssetOtInboundOtrulesSourceCandidate -AssetId a:t:IVCMcdit).Items
```

```output
Id           Name                                       Domain
--           ----                                       ------
b:110001     Any asset                                  
g:s:14741a05 Internal subnets                           system
g:o:1L741a05 3D Printer                                 OT/IoT
g:o:1K741a05 Access control devices                     OT/IoT
g:o:1M741a05 Access control gateway                     OT/IoT
a:n:hpyRdfjJ as01                                       
g:o:1N741a05 ATM                                        OT/IoT
g:o:1O741a05 Audio decoder                              OT/IoT
g:o:0q741a05 Autonomous vehicles                        OT/IoT
g:o:1P741a05 AV system                                  OT/IoT
g:o:0f741a05 BACnet broadcast management devices (BBMD) OT/IoT
g:o:1Q741a05 BACnet router & BBMD                       OT/IoT
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


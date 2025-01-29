---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znassetotoutboundotrulesdestinationcandidate
schema: 2.0.0
---

# Get-ZNAssetOtOutboundOtrulesDestinationCandidate

## SYNOPSIS
Returns a list of destination candidates for Outbound rules.

## SYNTAX

```
Get-ZNAssetOtOutboundOtrulesDestinationCandidate -AssetId <String> [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of destination candidates for Outbound rules.

## EXAMPLES

### Example 1: List destination candidates for an OT Outbound Rule
```powershell
(Get-ZNAssetOtOutboundOtrulesDestinationCandidate -AssetId a:t:IVCMcdit).Items
```

```output
Id           Name                                      Domain
--           ----                                      ------
b:114002     Segmented OT/IoT devices                  
g:o:1L741a05 3D Printer                                OT/IoT
g:a:SMNYUVPK Access Control Assistance Operators       posh.local
g:o:1K741a05 Access control devices                    OT/IoT
g:o:1M741a05 Access control gateway                    OT/IoT
g:a:ygWshrUK Account Operators                         posh.local
g:a:vDSBhdKu Administrators                            posh.local
g:a:lCM1TULR Allowed RODC Password Replication Group   posh.local
g:s:18741a05 Any asset except segmented OT/IoT devices system
g:s:28741a05 Any except trusted Internet               system
g:o:1N741a05 ATM                                       OT/IoT
```

This cmdlet lists destination candidates for an OT inbound rule.

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


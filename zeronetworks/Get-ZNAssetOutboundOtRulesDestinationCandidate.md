---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znassetoutboundotrulesdestinationcandidate
schema: 2.0.0
---

# Get-ZNAssetOutboundOtRulesDestinationCandidate

## SYNOPSIS
Returns a list of destination candidates for Outbound rules.

## SYNTAX

```
Get-ZNAssetOutboundOtRulesDestinationCandidate -AssetId <String> [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of destination candidates for Outbound rules.

## EXAMPLES

### Example 1: List destination candidates for outbound OT rule
```powershell
$asset = (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
(Get-ZNAssetOutboundOtRulesDestinationCandidate -AssetId $asset).Items
```

```output
Id           Name             Domain
--           ----             ------
b:110001     Any asset        
g:s:14da83cd Internal subnets system
a:n:c9PBr848 al01             
a:n:wO7YvV5m bdf027316245     
a:n:1ixx7otO c365acdfdff3     
a:l:Wayc34Bu cs01             
a:a:JF2xro6g DC01             posh.local
a:a:wmw7t9vI FS01             posh.local
a:a:e7XtRE2C FS02             posh.local
a:a:EzbcAdb7 LA01             posh.local
a:l:aZzoaFV9 mirror1          
a:l:Dl45Jne9 mirror2          
```

This cmdlet lists destination candidates for an outbound OT rule.

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


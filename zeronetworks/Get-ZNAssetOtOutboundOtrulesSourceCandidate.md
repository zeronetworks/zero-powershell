---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znassetotoutboundotrulessourcecandidate
schema: 2.0.0
---

# Get-ZNAssetOtOutboundOtrulesSourceCandidate

## SYNOPSIS
Returns a list of source candidates for Outbound rules.

## SYNTAX

```
Get-ZNAssetOtOutboundOtrulesSourceCandidate -AssetId <String> [-AccountName <String>] [-Cursor <Int64>]
 [-Limit <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of source candidates for Outbound rules.

## EXAMPLES

### Example 1: List source candidates for an OT Outbound Rule
```powershell
(Get-ZNAssetOtOutboundOtrulesSourceCandidate -AssetId a:t:IVCMcdit).Items
```

```output
Id           Name             Domain
--           ----             ------
b:110001     Any asset        
g:s:14741a05 Internal subnets system
a:n:hpyRdfjJ as01             
a:l:PcuZXVzf cs01             
a:a:mfDtEc1O dc01             posh.local
a:a:b1h4XYEU fs01             posh.local
a:a:u1CfRS9z fs02             posh.local
g:c:cVGfnCIb FS_Cluster       custom
a:a:LWpHbyOh LA01             posh.local
a:l:tbRUvOSi linux0           
a:l:w2nhJBGt linux1           
a:n:3bHh84mB lm01    
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


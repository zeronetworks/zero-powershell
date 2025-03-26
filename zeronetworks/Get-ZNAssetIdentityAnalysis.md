---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znassetidentityanalysis
schema: 2.0.0
---

# Get-ZNAssetIdentityAnalysis

## SYNOPSIS
Returns an object with asset analysis data.

## SYNTAX

```
Get-ZNAssetIdentityAnalysis -AssetId <String> [-AccountName <String>] [-Direction <Int32>]
 [-EventType <Int32>] [-From <Int64>] [-Sort <String>] [-To <Int64>] [<CommonParameters>]
```

## DESCRIPTION
Returns an object with asset analysis data.

## EXAMPLES

### Example 1: Get identity analysis
```powershell
Get-ZNAssetIdentityAnalysis -AssetId a:a:JF2xro6g
```

```output
CountAuthenticationPackage : 3
CountLogonType             : 3
CountSrcAsset              : 6
CountTargetUsername        : 4
ItemAuthenticationPackage  : {Kerberos, NTLM, Negotiate}
ItemLogonType              : {, , }
ItemSrcAsset               : {FS02, FS01, SS01, WC01…}
ItemTargetUsername         : {POSH.LOCAL\zero, POSH.LOCAL\nicholas, NT AUTHORITY\ANONYMOUS LOGON, POSH\zero}
```

This cmdletn gets an identity analysis.

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

### -Direction
direction for the query, 1=Inbound, 2=Outbound, 3=Both

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 1
Accept pipeline input: False
Accept wildcard characters: False
```

### -EventType
0-Success, 2-Failure

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

### -From
startTime in epoch(ms)

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

### -Sort
sort for the query

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

### -To
endTime in epoch(ms)

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetIdentityAnalysis

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


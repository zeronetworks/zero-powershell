---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znuseridentityanalysis
schema: 2.0.0
---

# Get-ZNUserIdentityAnalysis

## SYNOPSIS
Returns an object with asset analysis data.

## SYNTAX

```
Get-ZNUserIdentityAnalysis -UserId <String> [-AccountName <String>] [-EventType <Int32>] [-From <Int64>]
 [-Sort <String>] [-To <Int64>] [<CommonParameters>]
```

## DESCRIPTION
Returns an object with asset analysis data.

## EXAMPLES

### Example 1: Get identity analysis
```powershell
Get-ZNUserIdentityAnalysis -UserId u:a:2wl9Once
```

```output
CountAuthenticationPackage : 3
CountDstAsset              : 4
CountLogonType             : 3
CountSrcAsset              : 5
ItemAuthenticationPackage  : {Kerberos, Negotiate, NTLM}
ItemDstAsset               : {DC01, FS02, FS01, SS01}
ItemLogonType              : {, , }
ItemSrcAsset               : {FS01, FS02, SS01, 192.168.1.206…}
```

This cmdlet gets an identity analysis.

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

### -UserId
userId to filter on

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IUserIdentityAnalysis

## NOTES

## RELATED LINKS


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsconnectregionfailovercandidate
schema: 2.0.0
---

# Get-ZNSettingsConnectRegionFailoverCandidate

## SYNOPSIS
Get a list of regions that can be used as failover candidates for the specified region

## SYNTAX

```
Get-ZNSettingsConnectRegionFailoverCandidate -RegionId <String> [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Get a list of regions that can be used as failover candidates for the specified region

## EXAMPLES

### Example 1: List failover candidates
```powershell
$region = (Get-ZNSettingsConnectRegion)[0]
Get-ZNSettingsConnectRegionFailoverCandidate -RegionId $region.Id
```

```output
Id           Name
--           ----
r:a:1lrzUVlj Failover
```

This cmdlet lists Connect region failover candidates.

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

### -RegionId
connect region id

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IIdNamePairList

## NOTES

## RELATED LINKS


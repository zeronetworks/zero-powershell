---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetaudit
schema: 2.0.0
---

# Get-ZNAssetAudit

## SYNOPSIS
Returns a list of audits for the asset.

## SYNTAX

```
Get-ZNAssetAudit -AssetId <String> [-Cursor <Int64>] [-Filters <String>] [-Limit <Int32>] [-Order <String>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of audits for the asset.

## EXAMPLES

### Example 1: Get Audits for an Asset.
```powershell
(Get-ZNAssetAudit -AssetId a:a:ZgBWOMyc).Items
```

```output
IsoTimestamp             AuditType DestinationEntitiesList EnforcementSource PerformedByName
------------             --------- ----------------------- ----------------- ---------------
2023-02-14T00:21:52.995Z 19        {DC1}                   4                 Nicholas DiCola
2023-02-14T00:09:55.155Z 17        {DC1}                   5                 Zero Networks
2023-02-09T13:43:54.126Z 7         {DC1}                   5                 Zero Networks
2022-11-29T13:09:24.117Z 41        {DC1}                   4                 Polina Blinchevsky
2022-11-22T11:50:30.439Z 28        {DC1}                   5                 Zero Networks
2022-10-13T19:43:15.977Z 28        {DC1}                   6                 PowerShell
2022-10-13T18:28:43.287Z 28        {DC1}                   6                 PowerShell
2022-10-13T16:49:51.236Z 44        {DC1}                   2                 Zero Networks
2022-10-12T21:12:28.495Z 5         {DC1}                   6                 PowerShell
2022-10-12T21:12:28.493Z 4         {DC1}                   6                 PowerShell
```

This cmdlet returns audits for assets.

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

### -Filters
JSON string URI encoded set of fiters

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

### -Order
What order to sort the results

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAuditList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

ALIASES

## RELATED LINKS


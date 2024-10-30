---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetotaudit
schema: 2.0.0
---

# Get-ZNAssetOtAudit

## SYNOPSIS
Returns a list of audits for the asset.

## SYNTAX

```
Get-ZNAssetOtAudit -AssetId <String> [-AccountName <String>] [-Cursor <Int64>] [-Order <String>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of audits for the asset.

## EXAMPLES

### Example 1: List audits for an OT asset
```powershell
$otasset = Get-ZNAssetsOt | where {$_.Fqdn -eq "ot1777"}
(Get-ZNAssetOtAudit -AssetId $otasset.id).Items
```

```output
AuditType DestinationEntitiesList EnforcementSource PerformedByName
--------- ----------------------- ----------------- ---------------
74        {ot1777}                5                 Zero Networks
31        {ot1777}                2                 Zero Networks
31        {ot1777}                2                 Zero Networks
31        {ot1777}                2                 Zero Networks
55        {ot1777}                2                 Zero Networks
55        {ot1777}                2                 Zero Networks
55        {ot1777}                2                 Zero Networks
29        {ot1777}                5                 Zero Networks
29        {ot1777}                5                 Zero Networks
29        {ot1777}                5                 Zero Networks
```

This cmdlet returns audits for an OT asset.

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

## RELATED LINKS


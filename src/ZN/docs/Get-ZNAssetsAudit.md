---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetsaudit
schema: 2.0.0
---

# Get-ZNAssetsAudit

## SYNOPSIS
Returns a list of audits for the asset.

## SYNTAX

```
Get-ZNAssetsAudit -AssetId <String> [-Cursor <Int64>] [-Order <String>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of audits for the asset.

## EXAMPLES

### Example 1: List audits for an asset
```powershell
PS C:\> (Get-ZNAssetsAudit -AssetId $asset).Items
```

```output
AuditType DestinationEntitiesList EnforcementSource PerformedByName
--------- ----------------------- ----------------- ---------------
1         {DC01}                  6                 ModuleTesting
4         {DC01}                  6                 ModuleTesting
```

This cmdlet lists audits for an asset.

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


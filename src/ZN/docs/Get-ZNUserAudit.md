---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znuseraudit
schema: 2.0.0
---

# Get-ZNUserAudit

## SYNOPSIS
Returns a list of audits for the user.

## SYNTAX

```
Get-ZNUserAudit -UserId <String> [-Cursor <String>] [-Filters <String>] [-Limit <Int32>] [-Order <String>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of audits for the user.

## EXAMPLES

### Example 1: Get audits for a user
```powershell
Get-ZNUserAudit -UserId u:a:E6iXCia4
```

```output
AuditType Details
--------- -------                                                                                                                     
9         {"rule":{"remoteEntityNames":[{"id":"b:110001","name":"Any asset"}],"ports":[{"protocol_type":6,"ports":"3389"}],"expiratio…
```

This cmdlet gets the audits for a user.

## PARAMETERS

### -Cursor
cursor position to start at

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAuditList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


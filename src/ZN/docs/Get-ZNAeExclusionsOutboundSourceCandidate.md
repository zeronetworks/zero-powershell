---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znaeexclusionsoutboundsourcecandidate
schema: 2.0.0
---

# Get-ZNAeExclusionsOutboundSourceCandidate

## SYNOPSIS
Returns a list of source candidates for AE Exclusion rules.

## SYNTAX

```
Get-ZNAeExclusionsOutboundSourceCandidate [-AccountName <String>] [-Cursor <Int64>] [-Limit <Int32>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of source candidates for AE Exclusion rules.

## EXAMPLES

### Example 1: Get possible sources for AE outbound exclusion
```powershell
(Get-ZNAeExclusionsOutboundsourceCandidate).Items
```

```output
Domain     Id           Name
------     --           ----
           b:110001     Any asset
posh.local g:a:SMNYUVPK Access Control Assistance Operators
posh.local g:a:ygWshrUK Account Operators
posh.local g:a:vDSBhdKu Administrators
posh.local g:a:lCM1TULR Allowed RODC Password Replication Group
           a:n:hpyRdfjJ as01
posh.local g:a:vRjsI4Re Backup Operators
OT/IoT     g:o:0T741a05 Biometric entry systems
OT/IoT     g:o:04741a05 Cameras
OT/IoT     g:o:0A741a05 Card readers
posh.local g:a:Wuqi52A3 Certificate Service DCOM Access
```

This cmdlet will return possbile candidates for destinations in an AE outbound exclusion.

### Example 2: Search for a candidate
```powershell
(Get-ZNAeExclusionsOutboundsourceCandidate -search DC01).Items
```

```output
Domain     Id           Name
------     --           ----
posh.local a:a:mfDtEc1O dc01
```

To find a specific candidate use the search parameter with the Name to be searched.

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


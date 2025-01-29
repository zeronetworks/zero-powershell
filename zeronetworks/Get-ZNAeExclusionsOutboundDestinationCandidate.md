---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znaeexclusionsoutbounddestinationcandidate
schema: 2.0.0
---

# Get-ZNAeExclusionsOutboundDestinationCandidate

## SYNOPSIS
Returns a list of destination candidates for AE Exclusion rules.

## SYNTAX

```
Get-ZNAeExclusionsOutboundDestinationCandidate [-AccountName <String>] [-Cursor <Int64>] [-Limit <Int32>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of destination candidates for AE Exclusion rules.

## EXAMPLES

### Example 1: Get possible destinations for AE outbound exclusion
```powershell
(Get-ZNAeExclusionsOutboundDestinationCandidate).Items
```

```output
Domain     Id           Name
------     --           ----
           b:110002     All segmented assets
           b:110004     All segmented servers
           b:110005     All segmented clients
posh.local g:a:SMNYUVPK Access Control Assistance Operators
posh.local g:a:ygWshrUK Account Operators
posh.local g:a:vDSBhdKu Administrators
posh.local g:a:lCM1TULR Allowed RODC Password Replication Group
           a:n:hpyRdfjJ as01
posh.local g:a:vRjsI4Re Backup Operators
posh.local g:a:Wuqi52A3 Certificate Service DCOM Access
posh.local g:a:eHxbptyg Cert Publishers
posh.local g:a:YKAUh2xA Cloneable Domain Controllers
system     g:s:30741a05 Connect regions
```

This cmdlet will return possbile candidates for destinations in an AE outbound exclusion.

### Example 2: Search for a candidate
```powershell
(Get-ZNAeExclusionsOutboundDestinationCandidate -search DC01).Items
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


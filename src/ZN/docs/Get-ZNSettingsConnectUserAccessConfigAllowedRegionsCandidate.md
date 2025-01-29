---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsconnectuseraccessconfigallowedregionscandidate
schema: 2.0.0
---

# Get-ZNSettingsConnectUserAccessConfigAllowedRegionsCandidate

## SYNOPSIS
Returns a list of candidates for user access config allowed regions.

## SYNTAX

```
Get-ZNSettingsConnectUserAccessConfigAllowedRegionsCandidate [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of candidates for user access config allowed regions.

## EXAMPLES

### Example 1: Get Connect User Access Config candidates for Allowed Reagionssettings
```powershell
Get-ZNSettingsConnectUserAccessConfigAllowedRegionsCandidate
```

```output
ConnectivityStateAfterReboot CreatedAt     Description ForceSsoAuthentication Id           Name       SessionTtlHours UpdatedAt
---------------------------- ---------     ----------- ---------------------- --           ----       --------------- ---------
0                                                      False                  b:110007     Any region 0               
0                            1685619785028             False                  r:a:qjNbW2rx azure-posh 0               1685619785028
0                            1684846883972             False                  r:a:q0tqD2rf TestRegion 0               1692920163584            
```

This cmdlet returns the possible candidates for allowed regions in the user access configurations.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IConnectRegionsList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


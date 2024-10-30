---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsconnectuseraccessconfigassetscandidate
schema: 2.0.0
---

# Get-ZNSettingsConnectUserAccessConfigAssetsCandidate

## SYNOPSIS
Returns a list of candidates for user access config excluded assets.

## SYNTAX

```
Get-ZNSettingsConnectUserAccessConfigAssetsCandidate [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of candidates for user access config excluded assets.

## EXAMPLES

### Example 1: List User Access Config Assets Candidates
```powershell
Get-ZNSettingsConnectUserAccessConfigAssetsCandidate
```

```output
AssetStatus AssetType CreatedAt Description DirectMembersCount DistinguishedName Domain     Email FirstName Fqdn Guid
----------- --------- --------- ----------- ------------------ ----------------- ------     ----- --------- ---- ----                   
                                                                                 system                                                 
                                                                                 posh.local                      502e6952-dccd-4496-bc6…
                                                                                 posh.local                      fb6888e6-35db-4bd6-9fa…
                                                                                 posh.local                      894d8d88-3ead-4029-9c8…
                                                                                 posh.local                      27936def-758c-4995-88a…
                                                                                 posh.local                      f627e13d-28e1-4344-96e…
                                                                                 OT/IoT                          0c197f06-5693-445e-9eb…
            2                                                                                                                           
                                                                                 OT/IoT                          4c56f31e-9b7c-4cad-94a…
                                                                                 OT/IoT                          86e00e6a-d9c5-4b50-aec…
                                                                                 posh.local                      fb391482-287c-4462-920…
                                                                                 posh.local                      b2e59d34-8cae-4e82-8a1…
            2                                                                    posh.local                                             
            0                                                                                                                           
            0                                                                                                                           
            0                                                                                                                           
            0                                                                                                                           
            0                                                                                                                           
            0                                                                                                                           
            0                                                                                                                           
            0 
```

This cmdlet list User Access Configruation assets candidates.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsOrGroupsList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


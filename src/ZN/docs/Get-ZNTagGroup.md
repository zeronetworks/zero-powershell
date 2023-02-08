---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/get-zntaggroup
schema: 2.0.0
---

# Get-ZNTagGroup

## SYNOPSIS
Returns a list of Tags.

## SYNTAX

```
Get-ZNTagGroup [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of Tags.

## EXAMPLES

### Example 1: List tag groups
```powershell
Get-ZNTagGroup
```

```output
CreatedAt     Description                                                      DirectMembersCount Domain Guid                                 HasProtectionPolicy Id           Name                             Role Sid UpdatedAt
---------     -----------                                                      ------------------ ------ ----                                 ------------------- --           ----                             ---- --- ---------
1664439304197 Includes all Acronis backup servers in the environment           0                  tag    e136ec7d-96be-4148-93ce-8f8c4b372e34 False               g:t:32276c2c Acronis backup                   3        1664439304197
1656865701309 Includes all asset management servers in the environment         0                  tag    7bfb635e-8eba-4d36-9fe8-94a971ee01fb False               g:t:10276c2c Asset management                 3        1661144910063
1664439304197 Includes all backup servers in the environment                   4                  tag    d63ccad6-5c54-4309-ab47-74991d584387 False               g:t:23276c2c Backup servers                   3        1664439311149
1664439304197 Includes all certificate authority servers in the environment    1                  tag    686cfae1-4f4d-4d06-8cfc-8425a9e96d02 False               g:t:37276c2c Certificate Authority            3        1664439311149
1664439304197 Includes all Commvault backup servers in the environment         0                  tag    1a4a7dc3-60c3-42ec-81ae-a09af5bfbb1a False               g:t:31276c2c Commvault backup                 3        1664439304197
1664439304197 Includes all configuration management servers in the environment 2                  tag    78d60713-3c57-48dd-a2c1-be835e2d5103 False               g:t:22276c2c Configuration management servers 3        1664439311149
1664439304197 Includes all DFSR servers in the environment                     0                  tag    65d7b95e-940a-4c32-9c1f-2d664ddc6cb0 False               g:t:44276c2c DFSR                             3        1664439304197
1656865701309 Includes all DHCP servers in the environment                     0                  tag    6bf2d9eb-fd88-4826-baf0-81c6c42eee8e False               g:t:02276c2c DHCP                             3        1661144910063
1664439304197 Includes all Direct Access servers in the environment            0                  tag    20ca6ae7-ad21-4a34-938a-e4d07ebb02d5 False               g:t:43276c2c Direct Access                    3        1664439304197
1656865698131 Includes all Domain Controllers in the environment               1                  tag    1246686d-9e06-488a-ae88-414fc3fda24d False               g:t:01276c2c Domain controllers               3        1661144910063
```

This cmdlet will list tag groups for the environment.

### Example 2: Get the next page of system groups
```powershell
 Get-ZNTagGroup -Offset 10
```

```output
CreatedAt     Description                                                 DirectMembersCount Domain Guid                                 HasProtectionPolicy Id           Name        Role Sid UpdatedAt
---------     -----------                                                 ------------------ ------ ----                                 ------------------- --           ----        ---- --- ---------
1661144906624 Includes all DPM servers in the environment                 0                  tag    e8bf26a2-2ccb-4c55-9c12-0c08126bf8ec False               g:t:11276c2c DPM         3        1661144910063
1661144906624 Includes all Duo Authentication Proxies in the environment  0                  tag    8eb9886f-571e-4113-bb76-b7a5a92979c7 False               g:t:15276c2c Duo proxies 3        1661144910063
1656865701309 Includes all endpoint protection servers in the environment 0                  tag    3ed87ab4-8983-498f-aebe-88ff26772cec False               g:t:09276c2c EPP         3        1661144910063
1656865701309 Includes all Exchange servers in the environment            0                  tag    ea4aec04-371b-4ecb-981a-ca9c983fd2bb False               g:t:07276c2c Exchange    3        1661144910063
1664439304197 Includes all Forescout servers in the environment           0                  tag    a1797253-e968-4c85-8002-a9d1e84705fa False               g:t:38276c2c Forescout   3        1664439304197
1656865701309 Includes all FTP servers in the environment                 0                  tag    330de9b1-5f00-4b39-9e80-db57ae680e77 False               g:t:05276c2c FTP         3        1661144910063
1664439304197 Includes all Gytpol servers in the environment              0                  tag    986ca25c-3178-4efd-ad0e-64656cd8ff45 False               g:t:36276c2c Gytpol      3        1664439304197
1664439304197 Includes all iSCSI servers in the environment               0                  tag    d40cda78-a456-4712-b9d9-0a22c155ba60 False               g:t:29276c2c iSCSI       3        1664439304197
1664439304197 Includes all LanSweeper scanners in the environment         0                  tag    a0da1516-d4b1-4f59-8377-6554ec282b95 False               g:t:24276c2c Lansweeper  3        1664439304197
1664439304197 Includes all McAfee DBS servers in the environment          0                  tag    d92cfebc-a068-480c-88c0-a8c8f9b01efc False               g:t:45276c2c McAfee DBS  3        1664439304197
```

Use offset to get the next page of tag groups.

## PARAMETERS

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

### -Offset
Used to page through results

```yaml
Type: System.Int32
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IGroup

## NOTES

ALIASES

## RELATED LINKS


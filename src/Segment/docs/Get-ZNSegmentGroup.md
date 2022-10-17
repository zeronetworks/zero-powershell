---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/get-znsegmentgroup
schema: 2.0.0
---

# Get-ZNSegmentGroup

## SYNOPSIS
Groups

## SYNTAX

```
Get-ZNSegmentGroup [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Groups

## EXAMPLES

### Example 1: List Groups
```powershell
Get-ZNSegmentGroup
```

```output
CreatedAt     Description                                                                DirectMembersCount Domain    Guid                                 HasProtectionPolicy Id           Name                                      Role Sid                                          UpdatedAt
---------     -----------                                                                ------------------ ------    ----                                 ------------------- --           ----                                      ---- ---                                          ---------
1646147849282                                                                            0                  zero.labs dfaca10e-9718-4d59-a471-61d3af1bd49a False               g:a:yu1gHyge Access Control Assistance Operators       3    S-1-5-32-579                                 1646147976836
1646147849650                                                                            0                  zero.labs 0fa70a32-93e7-484d-984b-94c9d4d98d49 False               g:a:LXwCiIyG Account Operators                         3    S-1-5-32-548                                 1646147976929
1664439304197 Includes all Acronis backup servers in the environment                     0                  tag       e136ec7d-96be-4148-93ce-8f8c4b372e34 False               g:t:32276c2c Acronis backup                            3                                                 1664439304197
1646147849770                                                                            0                  zero.labs 84d2ad0c-b06f-44fd-a043-3c1549945246 False               g:a:ukYAIg2J Administrators                            3    S-1-5-32-544                                 1648643959816
1646147849525                                                                            0                  zero.labs 7155e8a9-5818-4bdb-a201-a584f3975b7b False               g:a:zpYqGY8G Allowed RODC Password Replication Group   3    S-1-5-21-1655129710-1269081394-587607975-571 1646147976886
1661144901938 Includes all IP ranges without protected OT/IoT devices in the environment 0                  system    0064a099-bac4-4053-86e9-b8fd0d308094 False               g:s:18276c2c Any asset except protected OT/IoT devices 3                                                 1661145206326
1656865701309 Includes all asset management servers in the environment                   0                  tag       7bfb635e-8eba-4d36-9fe8-94a971ee01fb False               g:t:10276c2c Asset management                          3                                                 1661144910063
1646147849644                                                                            0                  zero.labs e518320f-5bda-480a-8c44-87f0b0a4ab18 False               g:a:GqUGqkiM Backup Operators                          3    S-1-5-32-551                                 1646147976926
1664439304197 Includes all backup servers in the environment                             4                  tag       d63ccad6-5c54-4309-ab47-74991d584387 False               g:t:23276c2c Backup servers                            3                                                 1664439311149
1664439304197 Includes all certificate authority servers in the environment              1                  tag       686cfae1-4f4d-4d06-8cfc-8425a9e96d02 False               g:t:37276c2c Certificate Authority                     3                                                 1664439311149
```

The cmdlet gets all groups for the environment

### Example 2: Get the next page of custom groups
```powershell
Get-ZNSegmentGroup -offset 10
```

```output
CreatedAt     Description                                                      DirectMembersCount Domain    Guid                                 HasProtectionPolicy Id           Name                                   Role Sid                                          UpdatedAt
---------     -----------                                                      ------------------ ------    ----                                 ------------------- --           ----                                   ---- ---                                          ---------
1646147849235                                                                  0                  zero.labs a122e408-0192-45e0-b3ca-6e5b26534981 False               g:a:zobH4QmN Certificate Service DCOM Access        3    S-1-5-32-574                                 1646147976815
1646147849324                                                                  0                  zero.labs 8d6fd671-2b55-4079-abd3-b882b463ca56 False               g:a:v7HrWzxU Cert Publishers                        3    S-1-5-21-1655129710-1269081394-587607975-517 1646147976844
1656865701309 Includes all clients in the environment                          5                  system    69b42a3a-5fb7-4c04-a93e-6b46cd2c0dd2 False               g:s:04276c2c Clients                                3                                                 1661145182420
1646147849536                                                                  0                  zero.labs afa3ea95-97a5-4690-955f-f771e6884ce0 False               g:a:Ddd1JHS6 Cloneable Domain Controllers           3    S-1-5-21-1655129710-1269081394-587607975-522 1646147976895
1664439304197 Includes all Commvault backup servers in the environment         0                  tag       1a4a7dc3-60c3-42ec-81ae-a09af5bfbb1a False               g:t:31276c2c Commvault backup                       3                                                 1664439304197
1664439304197 Includes all configuration management servers in the environment 2                  tag       78d60713-3c57-48dd-a2c1-be835e2d5103 False               g:t:22276c2c Configuration management servers       3                                                 1664439311149
1646147849184                                                                  0                  zero.labs 6bdc5f9f-d492-4282-9876-c4579e9cfd56 False               g:a:vo645q5C Cryptographic Operators                3    S-1-5-32-569                                 1646147976808
1646147849661                                                                  0                  zero.labs c10ea51c-3f3d-4bcc-a34c-ce1f8c667dc6 False               g:a:mn0S6UED Denied RODC Password Replication Group 3    S-1-5-21-1655129710-1269081394-587607975-572 1648643959816
1664439304197 Includes all DFSR servers in the environment                     0                  tag       65d7b95e-940a-4c32-9c1f-2d664ddc6cb0 False               g:t:44276c2c DFSR                                   3                                                 1664439304197
1656865701309 Includes all DHCP servers in the environment                     0                  tag       6bf2d9eb-fd88-4826-baf0-81c6c42eee8e False               g:t:02276c2c DHCP                                   3                                                 1661144910063
```

Use offset to get the next page of custom groups.

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
.

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
.

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
.

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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IApiError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IGroup

## NOTES

ALIASES

## RELATED LINKS


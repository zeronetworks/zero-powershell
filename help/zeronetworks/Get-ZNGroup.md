---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-zngroup
schema: 2.0.0
---

# Get-ZNGroup

## SYNOPSIS
Returns the properties of an group.

## SYNTAX

### List (Default)
```
Get-ZNGroup [-AccountName <String>] [-Cursor <Int64>] [-Filters <String>] [-Limit <Int32>] [-Offset <Int32>]
 [-Search <String>] [<CommonParameters>]
```

### Get
```
Get-ZNGroup -GroupId <String> -GroupType <String> [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of an group.

## EXAMPLES

### Example 1: List Groups
```powershell
Get-ZNGroup
```

```output
CreatedAt     Description                                                                DirectMembersCount Domain    Guid                                 HasProtectionPolicy Id           Name
---------     -----------                                                                ------------------ ------    ----                                 ------------------- --           ----                 
1646147849282                                                                            0                  zero.labs dfaca10e-9718-4d59-a471-61d3af1bd49a False               g:a:yu1gHyge Access Control Assis…
1646147849650                                                                            0                  zero.labs 0fa70a32-93e7-484d-984b-94c9d4d98d49 False               g:a:LXwCiIyG Account Operators    
1646147849770                                                                            0                  zero.labs 84d2ad0c-b06f-44fd-a043-3c1549945246 False               g:a:ukYAIg2J Administrators       
1646147849525                                                                            0                  zero.labs 7155e8a9-5818-4bdb-a201-a584f3975b7b False               g:a:zpYqGY8G Allowed RODC Passwor…
1661144901938 Includes all IP ranges without protected OT/IoT devices in the environment 3                  system    0064a099-bac4-4053-86e9-b8fd0d308094 False               g:s:18276c2c Any asset except pro…
1646147849644                                                                            0                  zero.labs e518320f-5bda-480a-8c44-87f0b0a4ab18 False               g:a:GqUGqkiM Backup Operators     
1667984801729 Includes all biometric entry systems in the environment                    0                  OT/IoT    8745f7da-2e00-40b8-adf4-7ab5c2f928d1 False               g:o:0T276c2c Biometric entry syst…
1667984801729 Includes all camera devices in the environment                             1                  OT/IoT    13df7695-9bac-41ea-9437-8fef8dd3f28e False               g:o:04276c2c Cameras              
1667984801729 Includes all card readers in the environment                               0                  OT/IoT    80348a50-eae9-48fe-be2f-d12d67a6682d False               g:o:0A276c2c Card readers         
1646147849235                                                                            0                  zero.labs a122e408-0192-45e0-b3ca-6e5b26534981 False               g:a:zobH4QmN Certificate Service …
```

The cmdlet gets all groups for the environment

### Example 2: Get the next page of custom groups
```powershell
Get-ZNGroup -offset 10
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

### Example 3: Find a group
```powershell
Get-ZNGroup -Search Test
```

CreatedAt     Description        DirectMembersCount Domain Guid                                 HasProtectionPolicy Id           Name
---------     -----------        ------------------ ------ ----                                 ------------------- --           ---- 
1665444139901 Test servers group 1                  custom 68468022-0294-4c48-9e76-3074a14c22f5 False               g:c:gP9POclU Test…
```output

Use the search parameter to search by Name property.

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
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Filters
JSON string URI encoded set of filters

```yaml
Type: System.String
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupId
groupId to filter on

```yaml
Type: System.String
Parameter Sets: Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupType
group type to filter on

```yaml
Type: System.String
Parameter Sets: Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Limit
Limit the return results

```yaml
Type: System.Int32
Parameter Sets: List
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
Parameter Sets: List
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
Parameter Sets: List
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IGroupResponse

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISearchGroupsResponse

## NOTES

## RELATED LINKS


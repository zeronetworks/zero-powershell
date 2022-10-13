### Example 1: List AD groups
```powershell
Get-ZNSegmentAdGroup
```

```output
CreatedAt     Description DirectMembersCount Domain    Guid                                 HasProtectionPolicy Id           Name                                    Role Sid                                          UpdatedAt
---------     ----------- ------------------ ------    ----                                 ------------------- --           ----                                    ---- ---                                          ---------
1646147849282             0                  zero.labs dfaca10e-9718-4d59-a471-61d3af1bd49a False               g:a:yu1gHyge Access Control Assistance Operators     3    S-1-5-32-579                                 1646147976836
1646147849650             0                  zero.labs 0fa70a32-93e7-484d-984b-94c9d4d98d49 False               g:a:LXwCiIyG Account Operators                       3    S-1-5-32-548                                 1646147976929
1646147849770             0                  zero.labs 84d2ad0c-b06f-44fd-a043-3c1549945246 False               g:a:ukYAIg2J Administrators                          3    S-1-5-32-544                                 1648643959816
1646147849525             0                  zero.labs 7155e8a9-5818-4bdb-a201-a584f3975b7b False               g:a:zpYqGY8G Allowed RODC Password Replication Group 3    S-1-5-21-1655129710-1269081394-587607975-571 1646147976886
1646147849644             0                  zero.labs e518320f-5bda-480a-8c44-87f0b0a4ab18 False               g:a:GqUGqkiM Backup Operators                        3    S-1-5-32-551                                 1646147976926
1646147849235             0                  zero.labs a122e408-0192-45e0-b3ca-6e5b26534981 False               g:a:zobH4QmN Certificate Service DCOM Access         3    S-1-5-32-574                                 1646147976815
1646147849324             0                  zero.labs 8d6fd671-2b55-4079-abd3-b882b463ca56 False               g:a:v7HrWzxU Cert Publishers                         3    S-1-5-21-1655129710-1269081394-587607975-517 1646147976844
1646147849536             0                  zero.labs afa3ea95-97a5-4690-955f-f771e6884ce0 False               g:a:Ddd1JHS6 Cloneable Domain Controllers            3    S-1-5-21-1655129710-1269081394-587607975-522 1646147976895
1646147849184             0                  zero.labs 6bdc5f9f-d492-4282-9876-c4579e9cfd56 False               g:a:vo645q5C Cryptographic Operators                 3    S-1-5-32-569                                 1646147976808
1646147849661             0                  zero.labs c10ea51c-3f3d-4bcc-a34c-ce1f8c667dc6 False               g:a:mn0S6UED Denied RODC Password Replication Group  3    S-1-5-21-1655129710-1269081394-587607975-572 1648643959816
```

This cmdlet will list AD groups for the environment.

### Example 2: Get the next page of AD groups
```powershell
Get-ZNSegmentAdGroup -offset 10
```

```output
CreatedAt     Description DirectMembersCount Domain    Guid                                 HasProtectionPolicy Id           Name                  Role Sid                                           UpdatedAt
---------     ----------- ------------------ ------    ----                                 ------------------- --           ----                  ---- ---                                           ---------
1646147849178             0                  zero.labs cbd05304-0798-41cd-bfe4-983e28490890 False               g:a:IfIp7Xk6 Distributed COM Users 3    S-1-5-32-562                                  1646147976804
1646147849570             0                  zero.labs 3e788f6a-a751-4717-a0eb-602d27768729 False               g:a:YpEbTML1 DnsAdmins             3    S-1-5-21-1655129710-1269081394-587607975-1102 1646147976902
1646147849576             0                  zero.labs 6af3892c-34d8-482f-9dae-e73d5364d611 False               g:a:AYCIIuHA DnsUpdateProxy        3    S-1-5-21-1655129710-1269081394-587607975-1103 1646147976906
1646147849590             0                  zero.labs 3da4c11a-6a89-49db-9edc-446624794a89 False               g:a:KP9w8f2B Domain Admins         1    S-1-5-21-1655129710-1269081394-587607975-512  1648643959816
1646147849311             0                  zero.labs 2d1c155b-b55b-4821-a269-04171a630860 False               g:a:PjTk6UMb Domain Computers      3    S-1-5-21-1655129710-1269081394-587607975-515  1646147976848
1646147849687             0                  zero.labs c6bd5cd3-916e-47aa-a018-df3a15ca6d7e False               g:a:InybLheL Domain Controllers    3    S-1-5-21-1655129710-1269081394-587607975-516  1646147976947
1646147849384             0                  zero.labs 758aedc2-fef2-4001-b00e-320b2b68701a False               g:a:roPs8YjY Domain Guests         3    S-1-5-21-1655129710-1269081394-587607975-514  1646147976855
1646147849331             0                  zero.labs de5fad92-4c6c-4427-ba8b-a4b2797ea1fa False               g:a:17vQnkRK Domain Users          3    S-1-5-21-1655129710-1269081394-587607975-513  1646147976851
1648475326021             0                  zero.labs 3bcfa592-7310-4f1e-9b76-5fc1c6ac4ee9 False               g:a:04fLbS1I DUO                   3    S-1-5-21-1655129710-1269081394-587607975-1122 1648647696278
1646147849634             0                  zero.labs 81439d9e-fe40-4085-8120-41faa3b1cf18 False               g:a:t4r3sJfq Enterprise Admins     3    S-1-5-21-1655129710-1269081394-587607975-519  1646147976919
```

Use offset to get the next page of AD groups.

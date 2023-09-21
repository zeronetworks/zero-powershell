### Example 1: Get group members
```powershell
$group = Get-ZNAdGroup | where{$_.Name -eq "Administrators"}
(Get-ZNGroupsMember -GroupId $group.id -IncludeNestedMembers:$false).Entities
AssetStatus AssetType CreatedAt     Description DirectMembersCount DistinguishedName                         Domain    Email FirstName Fqdn Guid                                 HasProtectionPolicy IPV4Addresse
                                                                                                                                                                                                     s
----------- --------- ---------     ----------- ------------------ -----------------                         ------    ----- --------- ---- ----                                 ------------------- ------------
                      1646147850723                                CN=Administrator,CN=Users,DC=zero,DC=labs zero.labs                      d2ac73db-cb56-4c7e-9818-ddb9e4c9a74c                                 
                      1646147849590             0                                                            zero.labs                      3da4c11a-6a89-49db-9edc-446624794a89 False                           
                      1646147849634             0                                                            zero.labs                      81439d9e-fe40-4085-8120-41faa3b1cf18 False                           
                      1646147849754             0                                                            zero.labs                      f2796828-fd6d-40dd-84de-a62a4ce975ed False                           
```

This cmdlet gets members of a group from the environment.

### Example 2: Get group members and any members of direct groups
```powershell
$group = Get-ZNAdGroup | where{$_.Name -eq "Administrators"}
(Get-ZNGroupsMember -GroupId $group.id -IncludeNestedMembers:$true).Entities
AssetStatus AssetType Domain    Fqdn IPV4Addresses IPV6Addresses Id           Name              OperatingSystem ProtectionState Source
----------- --------- ------    ---- ------------- ------------- --           ----              --------------- --------------- ------
                      zero.labs                                  u:a:eTpnZu08 Administrator                                     3
                      zero.labs                                  u:a:PfGBMNXZ Amir Frankel                                      3
                      zero.labs                                  u:a:JinEj0u0 Benny Lakunishok                                  3
                      zero.labs                                  g:a:KP9w8f2B Domain Admins                                     
                      zero.labs                                  u:a:5bMryabz Emanuele Bianchi                                  3
                      zero.labs                                  g:a:t4r3sJfq Enterprise Admins                                 
                      zero.labs                                  u:a:E6iXCia4 Nicholas DiCola                                   3
```

Setting -IncludeNestedMembers to $true will get all members of the group and nested members.


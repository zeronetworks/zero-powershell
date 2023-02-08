### Example 1: Get group members
```powershell
$group = Get-ZNAdGroup | where{$_.Name -eq "Administrators"}
(Get-ZNGroupsMember -GroupId $group.id -IncludeNestedMembers:$false).Entities
```

```output
AssetStatus AssetType Domain    Fqdn IPV4Addresses IPV6Addresses Id           Name                    OperatingSystem ProtectionState Source
----------- --------- ------    ---- ------------- ------------- --           ----                    --------------- --------------- ------
                      zero.labs                                  u:a:eTpnZu08 Administrator                                           3
                      zero.labs                                  g:a:KP9w8f2B Domain Admins                                           
                      zero.labs                                  g:a:t4r3sJfq Enterprise Admins                                       
                      zero.labs                                  g:a:UjhtPdB4 ZNRemoteManagementGroup
```

This cmdlet gets members of a group from the environment.

### Example 2: Get group members and any members of direct groups
```powershell
$group = Get-ZNAdGroup | where{$_.Name -eq "Administrators"}
(Get-ZNGroupsMember -GroupId $group.id -IncludeNestedMembers:$true).Entities
```

```output
AssetStatus AssetType Domain    Fqdn IPV4Addresses IPV6Addresses Id           Name              OperatingSystem ProtectionState Source
----------- --------- ------    ---- ------------- ------------- --           ----              --------------- --------------- ------
                      zero.labs                                  u:a:eTpnZu08 Administrator                                     3
                      zero.labs                                  u:a:iGn4Hiqf Amir Duo                                          3
                      zero.labs                                  u:a:PfGBMNXZ Amir Frankel                                      3
                      zero.labs                                  u:a:ILBOlZpe Benny Duo                                         3
                      zero.labs                                  u:a:JinEj0u0 Benny Lakunishok                                  3
                      zero.labs                                  g:a:KP9w8f2B Domain Admins                                     
                      zero.labs                                  u:a:sJKzqaGn Ema Duo                                           3
                      zero.labs                                  u:a:5bMryabz Emanuele Bianchi                                  3
                      zero.labs                                  g:a:t4r3sJfq Enterprise Admins                                 
                      zero.labs                                  u:a:E6iXCia4 Nicholas DiCola                                   3
```

Setting -IncludeNestedMembers to $true will get all members of the group and nested members.


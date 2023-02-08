### Example 1: Get Entity Member Of
```powershell
$asset = Search-ZNAsset -Fqdn "dc1.zero.labs"
Get-ZNEntityMemberOf -EntityId $asset 
```

```output
CreatedAt     Description                                        DirectMembersCount Domain    Guid                                 HasProtectionPolicy Id           Name                        Role Sid                                           UpdatedAt
---------     -----------                                        ------------------ ------    ----                                 ------------------- --           ----                        ---- ---                                           ---------
1656865698131 Includes all Domain Controllers in the environment 1                  tag       1246686d-9e06-488a-ae88-414fc3fda24d False               g:t:01276c2c Domain controllers          3                                                  1661144910063
1656865701309 Includes all servers in the environment            3                  system    93cc0251-4c7f-4a2f-80fe-3be0cde86363 False               g:s:03276c2c Servers                     3                                                  1661145182420
1646147850799                                                    0                  zero.labs cc9609dd-ae64-45ea-a736-02432f54e88c False               g:a:usqapkU2 ZeroNetworksMonitoredAssets 3    S-1-5-21-1655129710-1269081394-587607975-1113 1646147977070
```

This cmdlet gets the memberOf for an entity

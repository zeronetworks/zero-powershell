### Example 1: List system groups
```powershell
Get-ZNSystemGroup
CreatedAt     Description                                                                DirectMembersCount Domain Guid                                 HasProtectionPolicy Id           Name                                      Role Sid UpdatedAt
---------     -----------                                                                ------------------ ------ ----                                 ------------------- --           ----                                      ---- --- ---------
1661144901938 Includes all IP ranges without protected OT/IoT devices in the environment 3                  system 0064a099-bac4-4053-86e9-b8fd0d308094 False               g:s:18276c2c Any asset except protected OT/IoT devices 3        1665512202910
1656865701309 Includes all clients in the environment                                    5                  system 69b42a3a-5fb7-4c04-a93e-6b46cd2c0dd2 True                g:s:04276c2c Clients                                   3        1665519179667
1661144901053 Includes all internal subnets in the environment                           7                  system 27a609cc-5c9f-49c1-98d6-43e119968028 False               g:s:14276c2c Internal subnets                          3        1661145254671
1661144901563 Includes all OT/IoT devices in the environment                             1                  system 3552264b-f64a-4a78-8e70-a3bc08bb8d8f False               g:s:16276c2c OT/IoT devices                            3        1665423896627
1661144901938 Includes all protected OT/IoT devices in the environment                   1                  system 7c549849-f498-4da8-8447-ab198926d6d2 False               g:s:17276c2c Protected OT/IoT devices                  3        1665512202910
1656865701309 Includes all servers in the environment                                    3                  system 93cc0251-4c7f-4a2f-80fe-3be0cde86363 False               g:s:03276c2c Servers                                   3        1661145182420
1652132107154 Includes all Trust servers in the environment                              0                  system 85d6c2ed-dddb-4561-84df-6f903e22a65e False               g:s:01276c2c Trust servers                             3        1661144903388
```

This cmdlet will list systems groups for the environment.

### Example 2: Get the next page of system groups
```powershell
 Get-ZNSystemGroup -Offset 10

```

Use offset to get the next page of system groups.

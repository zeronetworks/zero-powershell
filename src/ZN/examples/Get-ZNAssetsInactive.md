### Example 1: List inactive assets
```powershell
(Get-ZNAssetsInactive).Items                                 
                               
Id           Fqdn                              IPV4Addresses IPV6Addresses Source AssetStatus ProtectionState
--           ----                              ------------- ------------- ------ ----------- ---------------
a:a:af4yeaHY zadcomp9.posh.local (inactive)    {}            {}            3      12          1
a:l:1hZCLFoh linux323947.posh.local (inactive) {}            {}            15     12          1
```

The cmdlet will list inactive Assets for the environment.

### Example 2: List next page of inactive assets
```powershell
(Get-ZNAssetsInactive -Offset 10).Items

```

Use offset to get the next page of inactive Assets.

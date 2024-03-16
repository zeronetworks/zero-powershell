### Example 1: List rules for a specific asset
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Get-ZNAssetOutboundAllowRule -AssetId $asset -AddBuiltins
```

```output
CreatedAt     RemoteEntityInfos                           LocalEntityInfoName  Ruleclass ActivitiesCount Id                                   CreatedByEnforcementSource State Description
---------     -----------------                           -------------------  --------- --------------- --                                   -------------------------- ----- -----------
1694372599763 {ot1777}                                    All segmented assets           0               d69a32ec-a5ea-4915-a33f-297c6ec2ceec 5                          1     
1675961668454 {Any asset}                                 All segmented assets           0               721c3616-4914-4b66-b987-64af3d50dbae 5                          1     Allow DNS and DHCP from all…
1675961668436 {Any asset except segmented OT/IoT devices} All segmented assets           36288           b49360ce-3b4b-4e67-a613-42d4704d097f 5                          1     Allow everything to any ass…
```

This cmdlet retruns a list of rules for a specific asset.

### Example 2: Get a specific rule for a specific asset
```powershell
$asset = Search-ZNAsset -Fqdn wc01.posh.local
Get-ZNAssetOutboundAllowRule -AssetId $asset -RuleId b49360ce-3b4b-4e67-a613-42d4704d097f
```

```output
ApprovedById               : 
ApprovedByName             : 
CreatedByEnforcementSource : 5
CreatedById                : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName              : Zero Networks
CreatedByUserRole          : 1
ItemAction                 : 1
ItemActivitiesCount        : 36288
ItemApprovedAt             : 
ItemCreatedAt              : 1675961668436
ItemDescription            : Allow everything to any asset except segmented OT/IoT devices
ItemDirection              : 2
ItemExcludedEntityInfos    : {}
ItemExcludedLocalIdsList   : {}
ItemExpiresAt              : 0
ItemId                     : b49360ce-3b4b-4e67-a613-42d4704d097f
ItemLocalEntityId          : b:110002
ItemLocalProcessesList     : {*}
ItemParentId               : 
ItemParentType             : 0
ItemPortsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem}
ItemRemoteEntityIdsList    : {g:s:18445453}
ItemRemoteEntityInfos      : {Any asset except segmented OT/IoT devices}
ItemRuleclass              : 
ItemState                  : 1
ItemUpdatedAt              : 1690139822111
LocalEntityInfoId          : b:110002
LocalEntityInfoName        : All segmented assets
UpdatedById                : 
UpdatedByName              :
```

This cmdlet can get a specific rule for a specific asset.

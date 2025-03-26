### Example 1: Create group outbound OT rule
```powershell
$group = (Get-ZNGroup -Search Cameras).Items | where {$_.Name -eq "Cameras"} 
$protocolList = New-ZNProtocolsList -Protocol udp -LocalPorts 4
$destination = (Get-ZNGroupsOutboundOtRulesDestinationCandidate -GroupType ot -GroupId $group.Id -Search "Any asset").Items | where {$_.Id -like "b:*"}
New-ZNGroupsOutboundOtRule -GroupId $group.Id -GroupType ot -Action 1 -LocalEntityId $group.Id -ProtocolsList $protocolList -ShouldBuildMirrorRules:$true -State 1 -LocalProcessesList @("*") -ExcludedLocalIdsList @() -RemoteEntitiesIdList @($destination.Id)
```

```output
ApprovedById                   : 
ApprovedByName                 : 
CreatedByEmail                 : 
CreatedByEnforcementSource     : 6
CreatedById                    : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
CreatedByName                  : poshtesting
CreatedByUserRole              : 4
ItemAction                     : 1
ItemActivitiesCount            : 
ItemApprovedAt                 : 
ItemCreatedAt                  : 1739672507011
ItemDescription                : 
ItemDirection                  : 2
ItemExcludedAssetInfos         : 
ItemExcludedLocalIdsList       : {}
ItemExpiresAt                  : 
ItemId                         : R:s:pDtgP3Y1
ItemLocalEntityId              : g:o:04da83cd
ItemLocalEntityInfos           : 
ItemLocalProcessesList         : {*}
ItemMirrorNetworkRuleId        : 
ItemMirrorSwitchRuleId         : 
ItemMultipleLocalEntityIdsList : {}
ItemPolicyParentRuleId         : 
ItemPolicyParentRuleType       : 0
ItemProtocolsList              : {ZeroNetworks.PowerShell.Cmdlets.Api.Models.SwitchProtocolsList}
ItemRemoteEntitiesIdList       : {b:110001}
ItemRemoteEntitiesInfos        : 
ItemServicesList               : {}
ItemShouldBuildMirrorRules     : True
ItemSrcUserInfos               : 
ItemSrcUsersList               : {}
ItemState                      : 1
ItemSwitchParentRuleId         : 
ItemSwitchParentRuleType       : 0
ItemUpdatedAt                  : 
UpdatedById                    : 
UpdatedByName                  : 
```

This cmdlet creates an outbound OT rule for a group.

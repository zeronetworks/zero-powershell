### Example 1: Add a member to tag group
```powershell
$tagGroup = (Get-ZNGroup -Search "externally facing servers").Items
$asset = (Search-ZNAsset -Fqdn as01.posh.local).AssetId
Add-ZNTagGroupsMember -GroupId $tagGroup.id -MembersId @($asset)
```

```output

```

This cmdlet adds members to a tag group.

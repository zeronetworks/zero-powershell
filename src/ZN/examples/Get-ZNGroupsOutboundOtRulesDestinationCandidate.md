### Example 1: List destination candidates for an Outbound OT rules
```powershell
$group = (Get-ZNGroup -Search Cameras).Items | where {$_.Name -eq "Cameras"} 
(Get-ZNGroupsOutboundOtRulesDestinationCandidate -GroupType ot -GroupId $group.Id).Items
```

```output
Id           Name             Domain
--           ----             ------
b:110001     Any asset        
g:s:14da83cd Internal subnets system
a:l:Wayc34Bu cs01             
a:a:JF2xro6g DC01             posh.local
a:a:wmw7t9vI FS01             posh.local
a:a:e7XtRE2C FS02             posh.local
a:a:EzbcAdb7 LA01             posh.local
a:l:aZzoaFV9 mirror1          
a:l:Dl45Jne9 mirror2          
g:c:zV1tbs6t MirrorAsset      custom
a:l:fyf7WzCt ml01             
a:a:yhPm6ByM SS01             posh.local
```

This cmdlet lists destination candidates for an Outbound OT rule.

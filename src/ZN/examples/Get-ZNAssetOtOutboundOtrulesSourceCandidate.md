### Example 1: List source candidates for an OT Outbound Rule
```powershell
(Get-ZNAssetOtOutboundOtrulesSourceCandidate -AssetId a:t:IVCMcdit).Items
```

```output
Id           Name             Domain
--           ----             ------
b:110001     Any asset        
g:s:14741a05 Internal subnets system
a:n:hpyRdfjJ as01             
a:l:PcuZXVzf cs01             
a:a:mfDtEc1O dc01             posh.local
a:a:b1h4XYEU fs01             posh.local
a:a:u1CfRS9z fs02             posh.local
g:c:cVGfnCIb FS_Cluster       custom
a:a:LWpHbyOh LA01             posh.local
a:l:tbRUvOSi linux0           
a:l:w2nhJBGt linux1           
a:n:3bHh84mB lm01    
```

This cmdlet lists source candidates for an OT inbound rule.

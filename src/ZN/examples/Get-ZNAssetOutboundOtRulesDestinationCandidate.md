### Example 1: List destination candidates for outbound OT rule
```powershell
$asset = (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
(Get-ZNAssetOutboundOtRulesDestinationCandidate -AssetId $asset).Items
```

```output
Id           Name             Domain
--           ----             ------
b:110001     Any asset        
g:s:14da83cd Internal subnets system
a:n:c9PBr848 al01             
a:n:wO7YvV5m bdf027316245     
a:n:1ixx7otO c365acdfdff3     
a:l:Wayc34Bu cs01             
a:a:JF2xro6g DC01             posh.local
a:a:wmw7t9vI FS01             posh.local
a:a:e7XtRE2C FS02             posh.local
a:a:EzbcAdb7 LA01             posh.local
a:l:aZzoaFV9 mirror1          
a:l:Dl45Jne9 mirror2          
```

This cmdlet lists destination candidates for an outbound OT rule.

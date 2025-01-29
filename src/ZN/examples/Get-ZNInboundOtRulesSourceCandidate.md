### Example 1: List source candidate for OT outbound rule
```powershell
(Get-ZNAssetOtOutboundOtrulesSourceCandidate -AssetId a:t:o0AARV78).items
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
a:l:fyf7WzCt ml01             
a:a:yhPm6ByM SS01             posh.local
a:d:y5C7sd61 wc01             Entra ID (Azure AD)
a:a:o8w4Bpq7 WC01             posh.local
```

This cmdlet lists source candidates for an OT outbound rule.

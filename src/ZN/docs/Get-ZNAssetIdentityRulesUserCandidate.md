---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetidentityrulesusercandidate
schema: 2.0.0
---

# Get-ZNAssetIdentityRulesUserCandidate

## SYNOPSIS
Returns a list of user candidates for Identity rules.

## SYNTAX

```
Get-ZNAssetIdentityRulesUserCandidate -AssetId <String> [-Limit <Int32>] [-Offset <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of user candidates for Identity rules.

## EXAMPLES

### Example 1: List user candidates for identity rules
```powershell
$asset = Search-ZNAsset -Fqdn dc01.posh.local
Get-ZNAssetIdentityRulesUserCandidate -AssetId $asset
```

```output
Id           Name                                    Email Description DirectMembersCount Phone JobTitle LastLogon
--           ----                                    ----- ----------- ------------------ ----- -------- ---------
g:a:qu04AfTz Access Control Assistance Operators                                                         
g:a:XDRxcVDz Account Operators                                                                           
g:a:MBAj0Xfx Administrators                                                                              
g:a:u6xPbBLg Allowed RODC Password Replication Group                                                     
g:a:JjhBvgRW Backup Operators                                                                            
g:a:j4oCHNuP Certificate Service DCOM Access                                                             
g:a:YeUXSDi6 Cert Publishers                                                                             
u:a:0jsjkic1 User14                                                                                      
u:a:ATiwG34z User30                                                                                      
u:a:4UydfhAS backups                                                                                     
g:c:XuE877Q5 cgroup229731                                                                                
g:c:xHNwXAUC cgroup32                                                                                    
g:c:gZryzkFa cgroup35                                                                                    
u:a:IiObBkVQ krbtgt                                                                                      
u:a:6ZWP4tbK User53                                                                                      
u:a:gOqRM6QW User21                                                                                      
u:a:DiXg7R5u User51                                                                                      
u:a:E1yQF2eJ User13                                                                                      
u:a:h9ePwNQg User69                                                                                      
u:a:hC3Ylccx User79 
```

This cmdlet lists the user candidates for identity rules.

## PARAMETERS

### -AssetId
assetId to filter on

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Limit
Limit the return results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Offset
Used to page through results

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Search
Test to search for

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IGroupsOrUsersList

## NOTES

## RELATED LINKS


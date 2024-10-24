---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znassetexternalaccesspolicysourceusercandidate
schema: 2.0.0
---

# Get-ZNAssetExternalAccessPolicySourceUserCandidate

## SYNOPSIS
Returns a list of source user candidates for external access policies.

## SYNTAX

```
Get-ZNAssetExternalAccessPolicySourceUserCandidate -AssetId <String> [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of source user candidates for external access policies.

## EXAMPLES

### Example 1: List source user candidates for an external access policy
```powershell
Get-ZNAssetExternalAccessPolicySourceUserCandidate -AssetId a:n:3Odw9d40
```

```output
Id           Name                                    Email                         Description DirectMembersCount Phone JobTitle LastLogon
--           ----                                    -----                         ----------- ------------------ ----- -------- ---------
b:111001     Any user                                                                                                            
g:a:rZl537o4 Access Control Assistance Operators                                                                                 
g:a:V9kshIRu Account Operators                                                                                                   
g:a:Q4IYhlTC Administrators                                                                                                      
u:a:cDk6KLc8 albert Polo                             aestevez@paloaltonetworks.com                                               
g:a:OtwDATUK Allowed RODC Password Replication Group                                                                             
g:a:3AFg9RPE Backup Operators                                                                                                    
g:a:eSfiOaM0 Certificate Service DCOM Access                                                                                     
g:a:Qx5wSzxi Cert Publishers                                                                                                     
g:a:leHDIXAw Cloneable Domain Controllers                                                                                        
g:a:jF0PdFzE Cryptographic Operators                                                                                             
g:s:81669ce2 Zero Networks Admins                                                                                                
g:s:83669ce2 Zero Networks Operators                                                                                             
g:s:82669ce2 Zero Networks Viewers 
```

This cmdlet lists source user candidates for an external access policy.

## PARAMETERS

### -AccountName
this value is per customer / partner

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Read-ZNJWTtoken $env:ZNApiKey).aud.split(".")[0]
Accept pipeline input: False
Accept wildcard characters: False
```

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
Default value: 0
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


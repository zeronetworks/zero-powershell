---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znaeexclusionsoutboundusercandidate
schema: 2.0.0
---

# Get-ZNAeExclusionsOutboundUserCandidate

## SYNOPSIS
Returns a list of users candidates for Outbound AE Exclusions.

## SYNTAX

```
Get-ZNAeExclusionsOutboundUserCandidate [-AccountName <String>] [-Limit <Int32>] [-Offset <Int32>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of users candidates for Outbound AE Exclusions.

## EXAMPLES

### Example 1: Get possible sources for AE outbound exclusion
```powershell
Get-ZNAeExclusionsOutboundUserCandidate
```

```output
Id           Name                                    Email Description DirectMembersCount Phone JobTitle
--           ----                                    ----- ----------- ------------------ ----- --------
g:a:SMNYUVPK Access Control Assistance Operators                                                
g:a:ygWshrUK Account Operators                                                                  
g:a:vDSBhdKu Administrators                                                                     
g:a:lCM1TULR Allowed RODC Password Replication Group                                            
g:a:vRjsI4Re Backup Operators                                                                   
g:a:Wuqi52A3 Certificate Service DCOM Access                                                    
g:a:eHxbptyg Cert Publishers                                                                    
g:a:YKAUh2xA Cloneable Domain Controllers                                                       
g:a:Ei5iVw9f Cryptographic Operators                                                            
g:a:8GkAqqBj Denied RODC Password Replication Group 
```

This cmdlet will return possbile candidates for destinations in an AE outbound exclusion.

### Example 2: Search for a candidate
```powershell
Get-ZNAeExclusionsOutboundUserCandidate -Search Administrators
```

```output
Id           Name                           Email Description DirectMembersCount Phone JobTitle
--           ----                           ----- ----------- ------------------ ----- --------
g:a:vDSBhdKu Administrators                                                            
g:a:0uVypaYA Hyper-V Administrators                                                    
g:a:x0lvXmyM Storage Replica Administrators 
```

To find a specific candidate use the search parameter with the Name to be searched.

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


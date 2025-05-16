---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znuseroutboundrulesusercandidate
schema: 2.0.0
---

# Get-ZNUserOutboundRulesUserCandidate

## SYNOPSIS
Returns a list of users candidates for Outbound rules.

## SYNTAX

```
Get-ZNUserOutboundRulesUserCandidate -UserId <String> [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of users candidates for Outbound rules.

## EXAMPLES

### Example 1: List user candidates for a rule
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
(Get-ZNUserOutboundRulesUserCandidate -UserId $user.Id).Items
```

```output
Id           Name                                    Email                             Description DirectMembersCount Phone JobTitle
--           ----                                    -----                             ----------- ------------------ ----- --------
g:a:5C0h1yd5 Access Control Assistance Operators                                                                            
g:a:HJWKrlHo Account Operators                                                                                              
u:d:OyGBmU7E AdminAAD                                zeroaad@znposhstg.onmicrosoft.com                                      
g:a:HBWuhIUi Administrators                                                                                                 
g:a:9vY3VFbm Allowed RODC Password Replication Group                                                                        
g:a:exFKiv8f Backup Operators                                                                                               
g:a:MXf0RYFl Certificate Service DCOM Access                                                                                
g:a:yqC1KYpY Cert Publishers                                                                                                
g:a:4SxDUPd8 Cloneable Domain Controllers                                                                                   
g:a:GFjfKrnr Cryptographic Operators
```

This cmdlet lists user candidates for a rule.

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

### -UserId
userId to filter on

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IGroupsOrUsersList

## NOTES

## RELATED LINKS


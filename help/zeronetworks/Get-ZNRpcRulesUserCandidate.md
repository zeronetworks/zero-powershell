---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znrpcrulesusercandidate
schema: 2.0.0
---

# Get-ZNRpcRulesUserCandidate

## SYNOPSIS
Returns a list of user candidates for RPC rules.

## SYNTAX

```
Get-ZNRpcRulesUserCandidate [-AccountName <String>] [-Limit <Int32>] [-Offset <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of user candidates for RPC rules.

## EXAMPLES

### Example 1: Get user candidates for an rpc rule
```powershell
Get-ZNRpcRulesUserCandidate       
```

```output
Id           Name                                    Email                             Description DirectMembersCount Phone JobTitl
                                                                                                                            e
--           ----                                    -----                             ----------- ------------------ ----- -------
b:111001     Any user                                                                                                              
g:a:rZl537o4 Access Control Assistance Operators                                                                                   
g:a:V9kshIRu Account Operators                                                                                                     
g:a:Q4IYhlTC Administrators                                                                                                        
g:a:OtwDATUK Allowed RODC Password Replication Group                                                                               
g:a:3AFg9RPE Backup Operators                                                                                                      
g:a:eSfiOaM0 Certificate Service DCOM Access                                                                                       
g:a:Qx5wSzxi Cert Publishers                                                                                                       
g:a:leHDIXAw Cloneable Domain Controllers                                                                                          
g:a:jF0PdFzE Cryptographic Operators                                                                                               
g:a:PHBjR5mL Denied RODC Password Replication Group                                                                                
u:a:Tlx1mxp6 zUser1                                                                                                                
u:a:Hk7V9Fp7 zSvcAcct3                                                                                                             
u:a:hCHogv8X zSvcAcct8                                                                                                             
u:a:chEzqYOy zUser3                                                                                                                
u:a:AQPEZKgV zUser5                                                                                                                
u:a:p4xO35Li zUser10                                                                                                               
u:a:lAT1XUpz zSvcAcct9                                                                                                             
u:a:WfuzrUyt krbtgt                                                                                                                
u:a:JnQxZS6j nicholas-ad                             nicholas+poshprd@zeronetworks.com      
```

This cmdlet gets the possible user candidates for a rpc rule.

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


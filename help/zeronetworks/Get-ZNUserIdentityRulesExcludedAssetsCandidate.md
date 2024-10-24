---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znuseridentityrulesexcludedassetscandidate
schema: 2.0.0
---

# Get-ZNUserIdentityRulesExcludedAssetsCandidate

## SYNOPSIS
Returns a list of excluded assets candidates for Identity rules.

## SYNTAX

```
Get-ZNUserIdentityRulesExcludedAssetsCandidate -UserId <String> [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of excluded assets candidates for Identity rules.

## EXAMPLES

### Example 1: List excluded asset candidates for identity rule
```powershell
Get-ZNUserIdentityRulesExcludedAssetsCandidate -UserId u:a:4UydfhAS
```

```output
Id           Fqdn Name                                    Description DirectMembersCount IPV4Addresses IPV6Addresses Source AssetStatus ProtectionStat
                                                                                                                                        e
--           ---- ----                                    ----------- ------------------ ------------- ------------- ------ ----------- --------------
g:a:qu04AfTz      Access Control Assistance Operators                                                                                   
g:a:XDRxcVDz      Account Operators                                                                                                     
g:a:MBAj0Xfx      Administrators                                                                                                        
g:a:u6xPbBLg      Allowed RODC Password Replication Group                                                                               
g:a:JjhBvgRW      Backup Operators                                                                                                      
g:a:j4oCHNuP      Certificate Service DCOM Access                                                                                       
g:a:YeUXSDi6      Cert Publishers                                                                                                       
a:a:8ErCHXe8      DC01                                                                                                                  1
a:a:t8SZ1cp2      TS01                                                                                                                  3
a:a:OtfLGUBq      WC01                                                                                                                  1
g:c:XuE877Q5      cgroup229731                                                                                                          
g:c:xHNwXAUC      cgroup32                                                                                                              
g:c:gZryzkFa      cgroup35   
```

This cmdlet lists excluded asset candidates for identity rules for a specific user.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsOrGroupsList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


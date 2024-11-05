---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsconnectuseraccessconfigexcludedassetscandidate
schema: 2.0.0
---

# Get-ZNSettingsConnectUserAccessConfigExcludedAssetsCandidate

## SYNOPSIS
Returns a list of candidates for user access config excluded assets.

## SYNTAX

```
Get-ZNSettingsConnectUserAccessConfigExcludedAssetsCandidate [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of candidates for user access config excluded assets.

## EXAMPLES

### Example 1: List excluded asset candidates for user access configs
```powershell
Get-ZNSettingsConnectUserAccessConfigExcludedAssetsCandidate
```

```output
Id           Fqdn Name                                      Description DirectMembersCount IPV4Addresses IPV6Addresses S
                                                                                                                       o
                                                                                                                       u
                                                                                                                       r
                                                                                                                       c
                                                                                                                       e
--           ---- ----                                      ----------- ------------------ ------------- ------------- -
g:a:qu04AfTz      Access Control Assistance Operators                                                                   
g:a:XDRxcVDz      Account Operators                                                                                     
g:a:MBAj0Xfx      Administrators                                                                                        
g:a:u6xPbBLg      Allowed RODC Password Replication Group                                                               
g:s:18445453      Any asset except segmented OT/IoT devices                                                             
g:s:28445453      Any except trusted Internet                                                                           
g:a:JjhBvgRW      Backup Operators                                                                                      
a:l:aayoPnNJ      CS01                                                                                                  
g:a:j4oCHNuP      Certificate Service DCOM Access                                                                       
g:a:YeUXSDi6      Cert Publishers                                                                                       
a:a:8ErCHXe8      DC01                                                                                                  
a:l:hC8rOTo0      Linux0                                                                                                
a:l:goXZ3fpT      Linux1                                                                                                
a:l:FB8CBey8      Linux10                                                                                               
a:l:9CbKWeTW      Linux100                                                                                              
a:l:ZVocc16n      Linux1000                                                                                             
a:l:jhmIsjL9      Linux1001                                                                                             
a:l:8249TvxO      Linux1002                                                                                             
a:l:aHMCQGN2      Linux1003                                                                                             
g:c:XuE877Q5      cgroup229731 
```

This cmdlet lists the asset candidates for User Access Configs.

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsOrGroupsList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


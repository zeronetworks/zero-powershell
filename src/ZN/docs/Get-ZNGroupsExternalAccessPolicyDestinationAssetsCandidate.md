---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-zngroupsexternalaccesspolicydestinationassetscandidate
schema: 2.0.0
---

# Get-ZNGroupsExternalAccessPolicyDestinationAssetsCandidate

## SYNOPSIS
Returns a list of destunation assets candidates for an external access policy.

## SYNTAX

```
Get-ZNGroupsExternalAccessPolicyDestinationAssetsCandidate -GroupId <String> -GroupType <String>
 [-AccountName <String>] [-Limit <Int32>] [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of destunation assets candidates for an external access policy.

## EXAMPLES

### Example 1: List destination candidates for an external access policy
```powershell
Get-ZNGroupsExternalAccessPolicyDestinationAssetsCandidate -Groupid g:t:5V669ce2 -GroupType tag
```

```output
Id           Fqdn Name                                    Description DirectMembersCount IPV4Addresses IPV6Addresses
--           ---- ----                                    ----------- ------------------ ------------- -----------
g:a:rZl537o4      Access Control Assistance Operators                                                             
g:a:V9kshIRu      Account Operators                                                                               
g:a:Q4IYhlTC      Administrators                                                                                  
g:a:OtwDATUK      Allowed RODC Password Replication Group                                                         
a:n:3Odw9d40      as01                                                                                            
g:a:3AFg9RPE      Backup Operators                                                                                
g:a:eSfiOaM0      Certificate Service DCOM Access                                                                 
g:a:Qx5wSzxi      Cert Publishers                                                                                 
g:a:leHDIXAw      Cloneable Domain Controllers                                                                    
g:s:30669ce2      Connect regions  
```

This cmdlet lists destination candidates for an external access policy.

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

### -GroupId
groupId to filter on

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

### -GroupType
group type to filter on

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IAssetsOrGroupsList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


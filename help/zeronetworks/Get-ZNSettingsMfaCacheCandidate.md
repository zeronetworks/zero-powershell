---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/get-znsettingsmfacachecandidate
schema: 2.0.0
---

# Get-ZNSettingsMfaCacheCandidate

## SYNOPSIS
Returns a list of candidates for MFA Cache Policy.

## SYNTAX

```
Get-ZNSettingsMfaCacheCandidate [-AccountName <String>] [-Limit <Int32>] [-Offset <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of candidates for MFA Cache Policy.

## EXAMPLES

### Example 1: List MFA Cache candidates
```powershell
Get-ZNSettingsMfaCacheCandidate
```

```output
Id           Name                               Email                             Description DirectMembersCount Phone JobTitle LastLogon
--           ----                               -----                             ----------- ------------------ ----- -------- ---------
b:111001     Any user                                                                                                           
u:a:cDk6KLc8 albert Polo                        aestevez@paloaltonetworks.com                                                   
g:a:2mkAN4DS Domain Computers                                                                                                   
g:a:3AFg9RPE Backup Operators                                                                                                   
u:a:Q9tgABYw Guest (disabled)                                                                                                   
u:a:WfuzrUyt krbtgt (disabled)                                                                                                  
u:a:JnQxZS6j nicholas-ad                        nicholas+poshprd@zeronetworks.com                                               
g:a:3npP67jr Windows Authorization Access Group                                                                                 
g:a:3U1Z38mF Domain Admins                                                                                                      
g:a:7tzfiueO DnsAdmins                                                                                                          
g:a:81Tnx8va Pre-Windows 2000 Compatible Access
```

This cmdlet lists the MFA cache candidates.

### Example 2: {{ Add title here }}
```powershell
Get-ZNSettingsMfaCacheCandidate -Search Servers
```

```output
Id           Name                            Email Description DirectMembersCount Phone JobTitle LastLogon
--           ----                            ----- ----------- ------------------ ----- -------- ---------
g:a:DkSpCxPu RDS Endpoint Servers                                                                
g:a:npRV5X4F RDS Management Servers                                                              
g:a:AcuMXaSY RAS and IAS Servers                                                                 
g:a:wklutzfZ Terminal Server License Servers                                                     
g:a:W2iRFLTg RDS Remote Access Servers 
```

This cmdlet allows search for an MFA cache candidates.

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


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsconnectuseraccessconfigcandidate
schema: 2.0.0
---

# Get-ZNSettingsConnectUserAccessConfigCandidate

## SYNOPSIS
Returns a list of candidates for Connect User Access Config settings.

## SYNTAX

```
Get-ZNSettingsConnectUserAccessConfigCandidate [-Limit <Int32>] [-Offset <Int32>] [-Search <String>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns a list of candidates for Connect User Access Config settings.

## EXAMPLES

### Example 1: Get User Access Config Candidate
```powershell
Get-ZNSettingsConnectUserAccessConfigCandidate
```

```output
CreatedAt     Description                                                                DirectMembersCount DistinguishedName
---------     -----------                                                                ------------------ -----------------           
                                                                                                                                        
1677251756332                                                                            0                                              
1677251756933                                                                            0                                              
1677251757039                                                                            4                                              
1677251756753                                                                            0                                              
1675961668286 Includes all IP ranges without protected OT/IoT devices in the environment 3                                              
1677251756911                                                                            0                                              
1675961668336 Includes all biometric entry systems in the environment                    0                                              
1675961668319 Includes all camera devices in the environment                             27                                             
1675961668353 Includes all card readers in the environment                               0                                              
1677251756298                                                                            0                                              
1677251755513                                                                                               CN=Guest,CN=Users,DC=posh,D…
1677251756940                                                                                               CN=krbtgt,CN=Users,DC=posh,…
1681395846886                                                                                               CN=nicholas,CN=Users,DC=pos…
1677251757162                                                                                               CN=test,CN=Users,DC=posh,DC…
1677251756981                                                                                               CN=zero,CN=Users,DC=posh,DC…
1677251757084                                                                                               CN=ZNRemoteManagement,OU=Ze…
```

The cmdlet lists User Access Configuration candidates.

## PARAMETERS

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IUserAccessConfigCandidate

## NOTES

ALIASES

## RELATED LINKS


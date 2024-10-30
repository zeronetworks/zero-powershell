---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znsettingsconnectuseraccessconfigsourceuserscandidate
schema: 2.0.0
---

# Get-ZNSettingsConnectUserAccessConfigSourceUsersCandidate

## SYNOPSIS
Returns a list of candidates for user access config source users.

## SYNTAX

```
Get-ZNSettingsConnectUserAccessConfigSourceUsersCandidate [-AccountName <String>] [-Limit <Int32>]
 [-Offset <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of candidates for user access config source users.

## EXAMPLES

### Example 1: List possible source candidates
```powershell
Get-ZNSettingsConnectUserAccessConfigSourceUsersCandidate        
```

```output
CreatedAt     Description                                                                DirectMembersCount DistinguishedName                                      Domain
---------     -----------                                                                ------------------ -----------------                                      ------
                                                                                                                                                                         
1677251756332                                                                            0                                                                         posh.…
1677251756933                                                                            0                                                                         posh.…
1677251757039                                                                            4                                                                         posh.…
1677251756753                                                                            0                                                                         posh.…
1675961668286 Includes all IP ranges without segmented OT/IoT devices in the environment 4                                                                         system
1692538811684 Includes all IP ranges without trusted Internet addresses                  5                                                                         system
1677251756911                                                                            0                                                                         posh.…
1675961668336 Includes all biometric entry systems in the environment                    0                                                                         OT/IoT
1675961668319 Includes all camera devices in the environment                             27                                                                        OT/IoT
1675961668353 Includes all card readers in the environment                               0                                                                         OT/IoT
1677251755513                                                                                               CN=Guest,CN=Users,DC=posh,DC=local                     posh.…
1677251756940                                                                                               CN=krbtgt,CN=Users,DC=posh,DC=local                    posh.…
1681395846886                                                                                               CN=nicholas,CN=Users,DC=posh,DC=local                  posh.…
1694393497354                                                                                               CN=nicholasam,CN=Users,DC=posh,DC=local                posh.…
1677251757162                                                                                               CN=test,CN=Users,DC=posh,DC=local                      posh.…
1677251756981                                                                                               CN=zero,CN=Users,DC=posh,DC=local                      posh.…
1677251757084                                                                                               CN=ZNRemoteManagement,OU=ZeroNetworks,DC=posh,DC=local posh.…
```

This cmdlet list possible sources for an User Access Configuration in settings.

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


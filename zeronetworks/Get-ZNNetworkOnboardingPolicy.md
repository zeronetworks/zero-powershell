---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znnetworkonboardingpolicy
schema: 2.0.0
---

# Get-ZNNetworkOnboardingPolicy

## SYNOPSIS
Returns a list of network onboarding policies.

## SYNTAX

```
Get-ZNNetworkOnboardingPolicy [-AccountName <String>] [-Limit <Int32>] [-Offset <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of network onboarding policies.

## EXAMPLES

### Example 1: List Network onboarding policies
```powershell
Get-ZNNetworkOnboardingPolicy 
```

```output
CreatedAt                            : 1720788122962
CreatedByEmail                       : 
CreatedByEnforcementSource           : 4
CreatedById                          : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                        : Zero Networks
CreatedByUserRole                    : 1
Description                          : 
Enabled                              : False
EnforceBlocks                        : False
ExistingMembersLearningDays          : 60
GroupId                              : g:s:04669ce2
GroupInfoDomain                      : system
GroupInfoGuid                        : b69e53c2-cf08-47bb-a5d1-c1b1f801d54c
GroupInfoHasIdentityProtectionPolicy : False
GroupInfoHasNetworkProtectionPolicy  : False
GroupInfoId                          : g:s:04669ce2
GroupInfoName                        : Clients
Id                                   : 22c13631-c31d-4698-a875-fa1327cf01b5
InitialProtectAt                     : 1726924854503
NewMembersLearningDays               : 30
PolicyType                           : 1
UpdatedAt                            : 1721740854504
```

This cmdlet lists the network onboarding policies.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IProtectionPoliciesList

## NOTES

## RELATED LINKS


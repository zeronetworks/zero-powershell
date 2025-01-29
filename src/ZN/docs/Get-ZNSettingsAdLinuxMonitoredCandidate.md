---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znsettingsadlinuxmonitoredcandidate
schema: 2.0.0
---

# Get-ZNSettingsAdLinuxMonitoredCandidate

## SYNOPSIS
Returns a list of linux monitoring candidates for an AD forest.

## SYNTAX

```
Get-ZNSettingsAdLinuxMonitoredCandidate -ForestId <String> [-AccountName <String>] [-Cursor <Int64>]
 [-Limit <Int32>] [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of linux monitoring candidates for an AD forest.

## EXAMPLES

### Example 1: List Candidates for Linux AD monitoring
```powershell
(Get-ZNSettingsAdLinuxMonitoredCandidate -ForestId f:a:0bec706b).Items
```

```output
Id           Name                                    Domain
--           ----                                    ------
b:110003     All AD assets                           
g:s:03741a05 Servers                                 
g:s:04741a05 Clients                                 
g:a:SMNYUVPK Access Control Assistance Operators     posh.local
g:a:ygWshrUK Account Operators                       posh.local
g:a:vDSBhdKu Administrators                          posh.local
g:a:lCM1TULR Allowed RODC Password Replication Group posh.local
g:a:vRjsI4Re Backup Operators                        posh.local
g:a:Wuqi52A3 Certificate Service DCOM Access         posh.local
g:a:eHxbptyg Cert Publishers                         posh.local
g:a:YKAUh2xA Cloneable Domain Controllers            posh.local
g:a:Ei5iVw9f Cryptographic Operators                 posh.local
g:a:8GkAqqBj Denied RODC Password Replication Group  posh.local
```

This cmdlet lists possible candidates for the Linux AD monitoring control group.

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

### -Cursor
cursor position to start at

```yaml
Type: System.Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ForestId
The forest id

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ICandidatesList

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znconnectpostureprofile
schema: 2.0.0
---

# Get-ZNConnectPostureProfile

## SYNOPSIS
List Connect Posture Profiles

## SYNTAX

```
Get-ZNConnectPostureProfile [-AccountName <String>] [-Limit <Int32>] [-Offset <Int32>] [-WithCount]
 [<CommonParameters>]
```

## DESCRIPTION
List Connect Posture Profiles

## EXAMPLES

### Example 1: List Connect posture profiles
```powershell
(Get-ZNConnectPostureProfile).Items
```

```output
Action                                    : BLOCK
CheckIntervalSeconds                      : 900
CreatedAt                                 : 1774466773414
CreatedById                               : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName                             : Zero Networks
Description                               : 
Id                                        : P:a:CDknSSQc
MacCheckCertificateExistsList             : 
MacCheckDomainJoinedList                  : 
MacCheckFileExistsList                    : 
MacCheckProcessRunningList                : 
MacChecksAntivirusIsEnabled               : 
MacChecksDiskEncryptedIsEncrypted         : 
MacChecksOsVersionBuildOSVersionsList     : 
Name                                      : test
RoleIds                                   : {}
UpdatedAt                                 : 1774466773414
UpdatedById                               : 
UpdatedByName                             : 
WindowCheckCertificateExistsList          : {}
WindowCheckDomainJoinedList               : 
WindowCheckFileExistsList                 : {}
WindowCheckProcessRunningList             : {}
WindowCheckRegistryKeyValueDataExistsList : {}
WindowsChecksAntivirusIsEnabled           : True
WindowsChecksDiskEncryptedIsEncrypted     : 
WindowsChecksOsVersionBuildOSVersionsList :
```

This cmdlet lists Connect posture profiles.

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

### -WithCount
return count of objects

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: $true
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IPostureProfilesList

## NOTES

## RELATED LINKS


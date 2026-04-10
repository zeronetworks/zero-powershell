---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/get-znconnectposturecheck
schema: 2.0.0
---

# Get-ZNConnectPostureCheck

## SYNOPSIS
Get the metadata definitions for all available posture checks

## SYNTAX

```
Get-ZNConnectPostureCheck [-AccountName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get the metadata definitions for all available posture checks

## EXAMPLES

### Example 1: List Connect posture checks
```powershell
Get-ZNConnectPostureCheck
```

```output
Id                             MaxItems Name                       SingleValueOnly
--                             -------- ----                       ---------------
antivirus                               Antivirus                  True
diskEncrypted                           Disk Encryption            True
certificateExistsList                   Certificate exists         
fileExistsList                          File exists                
processRunningList                      Process is running         
domainJoined                            AD / Entra ID (Azure AD)   True
osVersionBuild                          OS version                 True
registryKeyValueDataExistsList          Registry value data exists
```

This cmdlet lists available posture checks for Connect.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IPostureCheckDefinitionsList

## NOTES

## RELATED LINKS


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/invoke-zndownloadconnectclient
schema: 2.0.0
---

# Invoke-ZNDownloadConnectClient

## SYNOPSIS
Returns a temporary url to the Connect client zip.

## SYNTAX

```
Invoke-ZNDownloadConnectClient -Platform <Int32> [<CommonParameters>]
```

## DESCRIPTION
Returns a temporary url to the Connect client zip.

## EXAMPLES

### Example 1: Get the download url for Connect client
```powershell
Invoke-ZNDownloadConnectClient -Platform 1
```

```output
Url
---
https://download.zeronetworks.com/connectClient/ZeroNetworksConnect-x64-3.1.0.0.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=do…
```

This cmdlet gets the download url for connect client.
1 = Windows, 2 = Mac (amd64), 3 = Mac (arm64)

## PARAMETERS

### -Platform
connect client platform

```yaml
Type: System.Int32
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IDownloadUrl

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


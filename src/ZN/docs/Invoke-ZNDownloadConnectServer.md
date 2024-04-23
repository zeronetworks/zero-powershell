---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/invoke-zndownloadconnectserver
schema: 2.0.0
---

# Invoke-ZNDownloadConnectServer

## SYNOPSIS
Returns a temporary url to the Connect server zip.

## SYNTAX

```
Invoke-ZNDownloadConnectServer [<CommonParameters>]
```

## DESCRIPTION
Returns a temporary url to the Connect server zip.

## EXAMPLES

### Example 1: Get the download url for Connect server
```powershell
Invoke-ZNDownloadConnectServer
```

```output
Url
---
https://download.zeronetworks.com/connectServer/zero-connect-server-setup-2.1.5.0.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=…
```

This cmdlet gets the download url for connect server.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IDownloadUrl

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


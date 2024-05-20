---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/invoke-zndownloadsegmentserver
schema: 2.0.0
---

# Invoke-ZNDownloadSegmentServer

## SYNOPSIS
Returns a temporary url to the Segment server zip.

## SYNTAX

```
Invoke-ZNDownloadSegmentServer [<CommonParameters>]
```

## DESCRIPTION
Returns a temporary url to the Segment server zip.

## EXAMPLES

### Example 1: Get the download url for Sergment server
```powershell
Invoke-ZNDownloadSegmentServer
```

```output
Url
---
https://download.zeronetworks.com/trust/windows-trust-8.12.11.0.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=download-iso%40zer…
```

This cmdlet gets the download url for segment server.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IDownloadUrl

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


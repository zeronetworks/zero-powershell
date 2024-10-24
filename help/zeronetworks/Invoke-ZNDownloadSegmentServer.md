---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/invoke-zndownloadsegmentserver
schema: 2.0.0
---

# Invoke-ZNDownloadSegmentServer

## SYNOPSIS
Returns a temporary url to the Segment server zip.

## SYNTAX

```
Invoke-ZNDownloadSegmentServer [-AccountName <String>] [<CommonParameters>]
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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IDownloadUrl

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

## NOTES

## RELATED LINKS


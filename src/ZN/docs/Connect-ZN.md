---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/connect-zn
schema: 2.0.0
---

# Connect-ZN

## SYNOPSIS
Login to Zero Networks to get a token for cmdlet use

## SYNTAX

```
Connect-ZN -Email <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Login to Zero Networks to get a token for cmdlet use.
NOTE: If your environment has a IdP set for default authentication, you cannot use this cmdlet and will need to use Set-ZNApiKey cmdlet using an API token.

#.Link
https://github.com/zeronetworks/zero-powershell/connect-zn

## EXAMPLES

### Example 1: Logs into Zero Networks using email otp
```powershell
Connect-ZN -UserName user@zeronetworks.com
```

```output
Please enter the OTP code recieved via email
Code: 11111

authenticatedVia          isPhoneChallengeSupported
----------------          -------------------------
user@zeronetworks.com                     False
```

This cmdlet logs into Zero Networks

## PARAMETERS

### -Email
login

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

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

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

## NOTES

ALIASES

## RELATED LINKS


---
external help file:
Module Name: ZN.Api
online version: https://github.com/zn.api/remove-znapikey
schema: 2.0.0
---

# Remove-ZNApiKey

## SYNOPSIS
Deletes the API key

## SYNTAX

```
Remove-ZNApiKey -ApiKey <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Deletes the API Key

#.Link
https://github.com/zn/remove-znapikey

## EXAMPLES

### Example 1: Delete the Api Key to be used
```powershell
Remove-ZNApiKey -ApiKey 'myApiKey'
```

This cmdlet will delete the api key.

## PARAMETERS

### -ApiKey
Api Key

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

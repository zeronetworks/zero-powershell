---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/read-znjwttoken
schema: 2.0.0
---

# Read-ZNJWTtoken

## SYNOPSIS


## SYNTAX

```
Read-ZNJWTtoken [-token] <String> [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES

### Example 1: Decode a JWT token
```powershell
Read-ZNJWTtoken -token 'Token'
```

```output
sub    : m:b7a85d794b3bb820413309acefe94adcb8767c16
name   : powershell
eid    : a230b915-9c85-4c0f-bd1f-7e29de741a05
scope  : 4
e_name : PowershellTesting
v      : 1
iat    : 1708377847
exp    : 1771536247
aud    : portal.zeronetworks.com
iss    : portal.zeronetworks.com/api/v1/access-token
```

This cmdlet decodes a JWT token.

## PARAMETERS

### -token


```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS


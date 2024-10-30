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

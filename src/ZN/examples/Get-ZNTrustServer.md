### Example 1: List trust server deployments
```powershell
Get-ZNTrustServer
```

```output
DefaultGateway  DnsIPAddress IPAddress    Id                                   Name   State Status SubnetMask                                                                                                                                                      --------------  ------------ ---------    --                                   ----   ----- ------ ----------
192.168.200.254 192.168.10.0 192.168.10.1 6bcb4fce-187a-4edd-9d9a-2d89b95091aa trust1              255.255.0.0
```

This cmdlet lists trust server deployments for an environment.

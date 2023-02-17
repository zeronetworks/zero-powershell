### Example 1: Change Zero Networks Environment
```powershell
$env = Get-ZNEnvironment | where {$_.name -eq 'Zero Networks Demo'}
Switch-ZNEnvironment -EnvironmentId $env.Id
```

```output

```

This cmdlet allows switching between Zero Networks environments when managing multiple environments.

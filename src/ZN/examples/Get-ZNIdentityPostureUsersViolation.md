### Example 1: List user violations
```powershell
(Get-ZNIdentityPostureUsersViolation -PostureCheckType PASSWORD_NEVER_EXPIRE).Items
```

```output
FoundTime        : 1769095547459
LastLogon        : 
PostureCheckType : 4
UserId           : u:a:HHzQ02eL
UserName         : bad user
UserType         : 1
ViolationState   : 1

FoundTime        : 1769095547459
LastLogon        : 1764720163473
PostureCheckType : 4
UserId           : u:a:85fqUZ9R
UserName         : Nicholas
UserType         : 2
ViolationState   : 1

FoundTime        : 1769095547459
LastLogon        : 
PostureCheckType : 4
UserId           : u:a:IevssPW3
UserName         : NicholasVPN
UserType         : 1
ViolationState   : 1
```

This cmdlet lists user violations for an Identity Security Posture Managment.

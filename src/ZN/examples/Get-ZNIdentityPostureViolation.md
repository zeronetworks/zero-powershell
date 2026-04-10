### Example 1: List ISPM violations
```powershell
 (Get-ZNIdentityPostureViolation).Items
 ```

```output
AffectedIdentitiesCount        : 6
Category                       : 1
Description                    : The identity password is set to never expire, increasing the risk of compromise due to credential reuse or leakage.
Id                             : a1b5b7b8-95cb-471f-b637-16bc87cba65a
IgnoredAffectedIdentitiesCount : 0
MitreTactics                   : {Persistence}
MitreTechniques                : {T1078}
PostureCheckType               : 4
Remediation                    : Uncheck "Password never expires" and enforce regular password rotation.
Severity                       : 2
TotalCheckedUsers              : 6

AffectedIdentitiesCount        : 1
Category                       : 4
Description                    : The default built-in Administrator account is active, providing a well-known target for attackers to exploit.
Id                             : 4da69e35-a46a-4ae7-8ef0-3b3ab53530f6
IgnoredAffectedIdentitiesCount : 1
MitreTactics                   : {Persistence, Defense Evasion}
MitreTechniques                : {T1098}
PostureCheckType               : 6
Remediation                    : Disable the built-in Administrator account and use named administrative accounts for management tasks.
Severity                       : 2
TotalCheckedUsers              : 6

AffectedIdentitiesCount        : 6
Category                       : 1
Description                    : These "stale" accounts often belong to former employees or contractors who were not properly offboarded, providing attackers with a silent way to maintain access.
Id                             : cc088be1-5118-4127-ad62-543bfa5832fa
IgnoredAffectedIdentitiesCount : 0
MitreTactics                   : {Persistence, Initial Access}
MitreTechniques                : {T1110}
PostureCheckType               : 12
Remediation                    : Force Reset: Trigger a "Password Change on Next Logon" for active users. Disable Stale Accounts: If the account has not logged in for 30+ days AND has an old password, disable it. 
                                 Verify GPO: Check if a "Fine-Grained Password Policy" or GPO is intentionally (or accidentally) allowing certain users to bypass rotation.
Severity                       : 3
TotalCheckedUsers              : 6

AffectedIdentitiesCount        : 1
Category                       : 4
Description                    : The identity has not authenticated for a long period, indicating it is likely dormant or abandoned.
Id                             : 85a3928e-dd0f-4f57-a25c-c2f65f74ff0f
IgnoredAffectedIdentitiesCount : 0
MitreTactics                   : {Persistence, Initial Access}
MitreTechniques                : {T1136, T1078.00}
PostureCheckType               : 13
Remediation                    : Disable or delete the inactive identity if it is no longer required for business operations.
Severity                       : 2
TotalCheckedUsers              : 6
```

This cmdlet lists ISPM violations.

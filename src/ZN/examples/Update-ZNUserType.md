### Example 1: Update a user type.
```powershell
Update-ZNUserType -UserId u:a:4UydfhAS -UserType 3 -Comment "wrong"

```


This cmdlet updates the user type. UNDETERMINED = 1, HUMAN = 2, SERVICE ACCOUNT = 3, SHARED 4, SYSTEM = 5, OTHER = 6

### Example 1: Get environment license
```powershell
Get-ZNEnvironmentsLicense -LicenseType network
```

```output
ConfigInfoActivitiesRetentionDays : 30
ConfigInfoClientsLimit            : 200
ConfigInfoEndTime                 : 1803591949000
ConfigInfoLicenseMode             : 1
ConfigInfoLimit                   : -1
ConfigInfoOtsLimit                : 100
ConfigInfoServersLimit            : 5000
ConfigInfoStartTime               : 1734471949000
CountTotalClientUsed              : 83
CountTotalOtsUsed                 : 3
CountTotalServerUsed              : 36
```

This cmdlet gets the environment license config. Supported license types are network, identity, rpc and connect.

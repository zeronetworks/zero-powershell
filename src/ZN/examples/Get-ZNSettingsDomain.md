### Example 1: List customer domains
```powershell
Get-ZNSettingsDomain
```

```output
IP             Url                                                                 UrlType
--             ---                                                                 -------
34.73.39.170   powershelltesting-admin-staging.zeronetworks.com                    1
34.73.39.170   powershelltesting-access-staging.zeronetworks.com                   2
34.73.39.170   powershelltesting-mfa-staging.zeronetworks.com                      3
34.73.39.170   powershelltesting-connect-download-staging.zeronetworks.com         4
35.186.196.214 powershelltesting-download-staging.zeronetworks.com                 5
35.186.196.214 powershelltesting-monitor-staging.zeronetworks.com                  6
34.73.39.170   powershelltesting-segment-server-staging.zeronetworks.com           7
34.73.39.170   powershelltesting-cloud-connector-staging.zeronetworks.com          8
34.73.39.170   powershelltesting-connect-server-staging.zeronetworks.com           9
34.73.39.170   powershelltesting-register-segment-server-staging.zeronetworks.com  10
34.73.39.170   powershelltesting-register-cloud-connector-staging.zeronetworks.com 11
34.73.39.170   powershelltesting-external-access-staging.zeronetworks.com          12
34.73.39.170   powershelltesting-jamf-connector-staging.zeronetworks.com           13
34.73.39.170   powershelltesting-snow-staging.zeronetworks.com                     14
34.73.39.170   powershelltesting-invite-staging.zeronetworks.com                   15
34.73.39.170   powershelltesting-register-connect-server-staging.zeronetworks.com  16
34.73.39.170   powershelltesting-connect-auth-staging.zeronetworks.com             18
34.73.39.170   powershelltesting-connect-client-staging.zeronetworks.com           19
35.229.94.83   powershelltesting-cloud-connector-proxy-staging.zeronetworks.com    20
34.73.39.170   powershelltesting-k8s-connector-staging.zeronetworks.com            21
34.73.39.170   connect-selector-staging.zeronetworks.com                           22
34.73.39.170   authenticate-staging.zeronetworks.com                               23
```

This cmdlet lists the customer domains and IPs used for the environment.

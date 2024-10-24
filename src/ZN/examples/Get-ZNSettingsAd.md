### Example 1: Get AD settings
```powershell
Get-ZNSettingsAd
```

```output
ActiveDirectoryInfoAllowInstallLinuxPackages           : True
ActiveDirectoryInfoDomainControllerFqdn                : dc01.posh.local
ActiveDirectoryInfoDomainName                          : posh.local
ActiveDirectoryInfoUseLdaps                            : False
ActiveDirectoryInfoUserFqdn                            : znremotemanagement
AllowNtlmFallback                                      : True
AutomationGroupsMonitoredGroupDomain                   : 
AutomationGroupsMonitoredGroupHasProtectionPolicy      : 
AutomationGroupsMonitoredGroupId                       : b:110003
AutomationGroupsMonitoredGroupName                     : All AD assets
ForestId                                               : f:a:0bec706b
LinuxAutomationGroupsMonitoredGroupDomain              : 
LinuxAutomationGroupsMonitoredGroupHasProtectionPolicy : 
LinuxAutomationGroupsMonitoredGroupId                  : b:110003
LinuxAutomationGroupsMonitoredGroupName                : All AD assets
ProtectedGroupDomain                                   : posh.local
ProtectedGroupHasProtectionPolicy                      : 
ProtectedGroupId                                       : g:a:s2FnXfXk
ProtectedGroupName                                     : ZeroNetworksProtectedAssets-DoNotModify
SecondaryDomains                                       : {}
UsePrimaryLinuxUserForAllDomains                       : True
UsePrimaryUserForAllDomains                            : True
```

This cmdlet returns the AD forest Id  settings.

### Example 1: Get SIEM Settings
```powershell
Get-ZNSettingsSiem
```

```output
ConfigAuditsEndpoint             : Custom-zeronetworksaudit_CL
ConfigIdentityActivitiesEndpoint : 
ConfigNetworkActivitiesEndpoint  : 
ConfigReceiverType               : 3
ConfigRpcActivitiesEndpoint      : 
ReceiverConfigClientId           : 16f564c2-8157-452d-8341-6adf3a123e3c
ReceiverConfigHecUri             : 
ReceiverConfigTenantId           : 16f564c2-8157-452d-8341-6adf3a123e3c
ReceiverConfigUrl                : https://zeronetworks-dce-5bzg.eastus-1.ingest.monitor.azure.com/dataCollectionRules/dcr-6fc4b684a9c847f4abc971b34c846655/streams
```

This cmdlet gets the SIEM settings.

### Example 1: Add SIEM settings
```powershell
New-ZNSettingsSiem -ReceiverType microsoft-sentinel -AuditsEndpoint Custom-zeronetworksaudit_CL -ReceiverConfigClientid 3e94d6b4-d231-4753-9640-61eea420fd07 -ReceiverConfigClientSecret "mytoken" -ReceiverConfigTenantId 0b655e46-ebd4-4eed-985a-df1cad4f8b28 -ReceiverConfigUrl "https://zeronetworks-dce-5bzg.eastus-1.ingest.monitor.azure.com/dataCollectionRules/dcr-6fc4b684a9c847f4abc971b34c846655/streams"
```

```output
ConfigAuditsEndpoint             : Custom-zeronetworksaudit_CL
ConfigIdentityActivitiesEndpoint : 
ConfigNetworkActivitiesEndpoint  : 
ConfigReceiverType               : 3
ConfigRpcActivitiesEndpoint      : 
ReceiverConfigClientId           : 3e94d6b4-d231-4753-9640-61eea420fd07
ReceiverConfigHecUri             : 
ReceiverConfigTenantId           : b0860d73-8f11-4321-bf37-b707c9e3dccf
ReceiverConfigUrl                : https://zeronetworks-dce-5bzg.eastus-1.ingest.monitor.azure.com/dataCollectionRules/dcr-6fc4b684a9c847f4abc971b34c846655/streams
```

This cmdlet adds a SIEM settings.

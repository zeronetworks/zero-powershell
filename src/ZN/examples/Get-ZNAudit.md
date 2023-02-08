### Example 1: List audit events
```powershell
(Get-ZNAudit).Items
```

```output
AuditType Details
--------- -------                                                                                                                                                                                                                                                                                                                
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"},{"id":"b:12ac10020120","name":"172.16.2.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","l…
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","localProcesses":["*"],"created_by":{"id":"1f3…
7                                                                                                                                                                                                                                                                                                                                
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"},{"id":"b:12ac10020120","name":"172.16.2.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","l…
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","localProcesses":["*"],"created_by":{"id":"1f3…
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"},{"id":"b:12ac10020120","name":"172.16.2.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","l…
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","localProcesses":["*"],"created_by":{"id":"1f3…
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"},{"id":"b:12ac10020120","name":"172.16.2.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","l…
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","localProcesses":["*"],"created_by":{"id":"1f3…
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"},{"id":"b:12ac10020120","name":"172.16.2.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","l…
```

The cmdlet will list Audits for the environment.

### Example 2: List next page of Audits
```powershell
$scrollCursor = (Get-ZNAudit).ScrollCursor
(Get-ZNAudit -Cursor $scrollCursor).Items
```

```output
AuditType Details                                                                                                                                                                                    
--------- -------                                                                                                                                                                                                                                                                                                                
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","localProcesses":["*"],"created_by":{"id":"1f3…
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"},{"id":"b:12ac10020120","name":"172.16.2.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","l…
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","localProcesses":["*"],"created_by":{"id":"1f3…
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"},{"id":"b:12ac10020120","name":"172.16.2.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","l…
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","localProcesses":["*"],"created_by":{"id":"1f3…
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"},{"id":"b:12ac10020120","name":"172.16.2.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","l…
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","localProcesses":["*"],"created_by":{"id":"1f3…
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"},{"id":"b:12ac10020120","name":"172.16.2.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","l…
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","localProcesses":["*"],"created_by":{"id":"1f3…
32        {"rule":{"LocalEntityID":"","localEntityNames":{"id":"b:110002","name":"All protected assets"},"remoteEntityNames":[{"id":"b:12ac10010120","name":"172.16.1.1"},{"id":"b:12ac10020120","name":"172.16.2.1"}],"ports":[{"protocol_type":1}],"expiration":0,"description":"Sentinel Integration - Block Malicous IPs","l…
```

Get-ZNAudit returns a body with Items (collection of audit events) and scrollCursor.  scrollCurosor is the epochtime (ms) of the last event and can be used to get the next set of events.

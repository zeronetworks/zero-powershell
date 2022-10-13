---
external help file:
Module Name: ZN.Segment
online version: https://test.comzn.segment/get-znsegmentaudit
schema: 2.0.0
---

# Get-ZNSegmentAudit

## SYNOPSIS
Audit Logs

## SYNTAX

```
Get-ZNSegmentAudit [-Cursor <Int64>] [-EntityId <String>] [-Filters <String>] [-From <Int32>] [-Limit <Int32>]
 [-Order <String>] [-Search <String>] [-To <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Audit Logs

## EXAMPLES

### Example 1: List audit events
```powershell
(Get-ZNSegmentAudit).Items
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
$scrollCursor = (Get-ZnSegmentAudit).ScrollCursor
(Get-ZnSegmentAudit -Cursor $scrollCursor).Items
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

Get-ZNSegmentAudit returns a body with Items (collection of audit events) and scrollCursor.
scrollCurosor is the epochtime (ms) of the last event and can be used to get the next set of events.

## PARAMETERS

### -Cursor
cursor position to start at epoch(ms)

```yaml
Type: System.Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EntityId
entityId to filter on

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Filters
JSON string URI encoded set of fiters

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -From
startTime in epoch(ms)

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Limit
.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Order
.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Search
.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -To
endTime in epoch(ms)

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.String

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuditList

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

## NOTES

ALIASES

## RELATED LINKS


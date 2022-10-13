---
external help file:
Module Name: ZN.Segment
online version: https://github.com/zn.segment/get-znsegmentgroupsmember
schema: 2.0.0
---

# Get-ZNSegmentGroupsMember

## SYNOPSIS
Groups

## SYNTAX

```
Get-ZNSegmentGroupsMember -GroupId <String> -IncludeNestedMembers [-Limit <Int32>] [-Offset <Int32>]
 [<CommonParameters>]
```

## DESCRIPTION
Groups

## EXAMPLES

### Example 1: Get group members
```powershell
$group = Get-ZNSegmentAdGroup | where{$_.Name -eq "Administrators"}
(Get-ZNSegmentGroupsMember -GroupId $group.id -IncludeNestedMembers:$false).Entities
```

```output
AssetStatus AssetType Domain    Fqdn IPV4Addresses IPV6Addresses Id           Name                    OperatingSystem ProtectionState Source
----------- --------- ------    ---- ------------- ------------- --           ----                    --------------- --------------- ------
                      zero.labs                                  u:a:eTpnZu08 Administrator                                           3
                      zero.labs                                  g:a:KP9w8f2B Domain Admins                                           
                      zero.labs                                  g:a:t4r3sJfq Enterprise Admins                                       
                      zero.labs                                  g:a:UjhtPdB4 ZNRemoteManagementGroup
```

This cmdlet gets members of a group from the environment.

### Example 2: Get group members and any members of direct groups
```powershell
$group = Get-ZNSegmentAdGroup | where{$_.Name -eq "Administrators"}
(Get-ZNSegmentGroupsMember -GroupId $group.id -IncludeNestedMembers:$true).Entities
```

```output
AssetStatus AssetType Domain    Fqdn IPV4Addresses IPV6Addresses Id           Name              OperatingSystem ProtectionState Source
----------- --------- ------    ---- ------------- ------------- --           ----              --------------- --------------- ------
                      zero.labs                                  u:a:eTpnZu08 Administrator                                     3
                      zero.labs                                  u:a:iGn4Hiqf Amir Duo                                          3
                      zero.labs                                  u:a:PfGBMNXZ Amir Frankel                                      3
                      zero.labs                                  u:a:ILBOlZpe Benny Duo                                         3
                      zero.labs                                  u:a:JinEj0u0 Benny Lakunishok                                  3
                      zero.labs                                  g:a:KP9w8f2B Domain Admins                                     
                      zero.labs                                  u:a:sJKzqaGn Ema Duo                                           3
                      zero.labs                                  u:a:5bMryabz Emanuele Bianchi                                  3
                      zero.labs                                  g:a:t4r3sJfq Enterprise Admins                                 
                      zero.labs                                  u:a:E6iXCia4 Nicholas DiCola                                   3
```

Setting -IncludeNestedMembers to $true will get all members of the group and nested members.

## PARAMETERS

### -GroupId
members id

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeNestedMembers
include nested members in the result

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: True
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

### -Offset
.

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

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IAuthError

### ZeroNetworks.PowerShell.Cmdlets.Segment.Models.IEntitiesList

## NOTES

ALIASES

## RELATED LINKS


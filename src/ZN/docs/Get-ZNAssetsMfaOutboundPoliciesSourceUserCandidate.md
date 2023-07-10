---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworkszeronetworks/get-znassetsmfaoutboundpoliciessourceusercandidate
schema: 2.0.0
---

# Get-ZNAssetsMfaOutboundPoliciesSourceUserCandidate

## SYNOPSIS
Returns a list of source users candidates on outbound MFA policies.

## SYNTAX

```
Get-ZNAssetsMfaOutboundPoliciesSourceUserCandidate -AssetId <String> [-Limit <Int32>] [-Offset <Int32>]
 [-Search <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of source users candidates on outbound MFA policies.

## EXAMPLES

### Example 1: Get possible source users for outbound MFA Policy for a specific asset
```powershell
(Get-ZNAssetsMfaOutboundPoliciesSourceUserCandidate -AssetId 'a:a:OtfLGUBq').Items
```

```output
Domain     Id           Name
------     --           ----
           b:111001     Any user
posh.local g:a:qu04AfTz Access Control Assistance Operators
posh.local g:a:XDRxcVDz Account Operators
posh.local g:a:MBAj0Xfx Administrators
posh.local g:a:u6xPbBLg Allowed RODC Password Replication Group
posh.local g:a:JjhBvgRW Backup Operators
posh.local g:a:j4oCHNuP Certificate Service DCOM Access
posh.local g:a:YeUXSDi6 Cert Publishers
posh.local g:a:5uhxEQPp Cloneable Domain Controllers
posh.local g:a:lPQyszKw Cryptographic Operators
posh.local g:a:Ymj7i8np Denied RODC Password Replication Group
posh.local u:a:r6ZkL5Y0 Guest
posh.local u:a:IiObBkVQ krbtgt
posh.local u:a:w27loY5p nicholas
posh.local u:a:Tolw5kf6 test
posh.local u:a:RVVXGo4w zero
posh.local u:a:V61t0gZB ZNRemoteManagement
system     g:s:81445453 Zero Networks Admins
system     g:s:83445453 Zero Networks Operators
system     g:s:82445453 Zero Networks Viewers
```

This cmdlet will return possbile candidates for source users in an outbound MFA policy.

### Example 2: Search for a candidate
```powershell
(Get-ZNAssetsMfaOutboundPoliciesSourceUserCandidate -AssetId 'a:a:OtfLGUBq' -Search administrator).Items
```

```output
Domain     Id           Name
------     --           ----
posh.local g:a:MBAj0Xfx Administrators
posh.local g:a:i01gT3az Hyper-V Administrators
posh.local g:a:oDcA2iHM Storage Replica Administrators
```

To find a specific candidate use the search parameter with the Name to be searched.

## PARAMETERS

### -AssetId
assetId to filter on

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

### -Limit
Limit the return results

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
Used to page through results

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

### -Search
Test to search for

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IError

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.ISrcUserCandidatesList

## NOTES

ALIASES

## RELATED LINKS


---
external help file:
Module Name: ZeroNetworks
online version: https://github.com/zeronetworks/zero-powershell/zeronetworks/new-znusermfainboundpolicy
schema: 2.0.0
---

# New-ZNUserMfaInboundPolicy

## SYNOPSIS
Returns the properties of the inbound MFA policy after creation.

## SYNTAX

```
New-ZNUserMfaInboundPolicy -UserId <String> -AdditionalPortsList <IPortsListItem[]> -DstEntityInfoId <String>
 -DstPort <String> -DstProcessNames <String[]> -FallbackToLoggedOnUser -MfaMethods <Int32[]> -OverrideBuiltins
 -ProtocolType <Int32> -RuleDuration <Int32> -SrcEntityInfos <IReactivePolicyInboundBodySrcEntityInfosItem[]>
 -SrcProcessNames <String[]> -SrcUserInfos <IReactivePolicyInboundBodySrcUserInfosItem[]> -State <Int32>
 [-AccountName <String>] [-ChangeTicket <String>] [-Description <String>]
 [-ExcludedSrcEntityInfos <IReactivePolicyInboundBodyExcludedSrcEntityInfosItem[]>]
 [-ExcludedSrcProcesses <String[]>] [-IdentityProtectionCategoryList <Int32[]>] [-Name <String>]
 [-RestrictLoginToOriginatingUser] [-UseDefaultIdp] [-UseOccasionalMfa] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Returns the properties of the inbound MFA policy after creation.

## EXAMPLES

### Example 1: Create inbound MFA policy
```powershell
$user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
$destination = (Get-ZNMfaInboundPoliciesDestinationCandidate -Search "LA01").Items
$source = (Get-ZNMfaInboundPoliciesSourceCandidate -search "Any Asset").Items
$sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcEntityInfosItem]::new()
$sourceEntity.Id = $source.Id
$sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcUserInfosItem]::new()
$sourceUserEntity.Id = $user.Id
$portsList = New-ZNPortsList -Empty
New-ZNUserMfaInboundPolicy -UserId $user.id -AdditionalPortsList $portsList -DstEntityInfoId $destination.Id -DstPort "23" -DstProcessNames @("*") -FallbackToLoggedOnUser -OverrideBuiltins -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1
```

```output
DstEntityInfoId                    : a:a:EzbcAdb7
DstEntityInfoName                  : LA01
ItemAdditionalPortsList            : {}
ItemCreatedAt                      : 1745511129241
ItemCreatedBy                      : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
ItemCreatedByName                  : poshtesting
ItemDescription                    : 
ItemDstPort                        : 23
ItemDstProcessNames                : {*}
ItemEnforcementSource              : 6
ItemExcludedSrcEntityInfos         : {}
ItemExcludedSrcProcesses           : {}
ItemFallbackToLoggedOnUser         : True
ItemId                             : f459e8b0-f7f8-4157-8989-afee1cac7735
ItemIdentityProtectionCategoryList : {}
ItemMfaMethods                     : {4}
ItemOverrideBuiltins               : True
ItemProtocolType                   : 6
ItemRestrictLoginToOriginatingUser : False
ItemRuleDuration                   : 6
ItemSrcEntityInfos                 : {Any asset}
ItemSrcProcessNames                : {*}
ItemSrcUserInfos                   : {zero}
ItemState                          : 1
ItemUpdatedAt                      : 1745511129241
ItemUpdatedBy                      : m:3929d40ebf7ecfe8dbce815b1c97ea93c2b2aa59
ItemUpdatedByName                  : poshtesting
```

This cmdlet creates an inbound MFA policy for the user.

## PARAMETERS

### -AccountName
this value is per customer / partner

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Read-ZNJWTtoken $env:ZNApiKey).aud.split(".")[0]
Accept pipeline input: False
Accept wildcard characters: False
```

### -AdditionalPortsList
.
To construct, see NOTES section for ADDITIONALPORTSLIST properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IPortsListItem[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ChangeTicket
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

### -Description
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

### -DstEntityInfoId
.

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

### -DstPort
.

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

### -DstProcessNames
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludedSrcEntityInfos
.
To construct, see NOTES section for EXCLUDEDSRCENTITYINFOS properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IReactivePolicyInboundBodyExcludedSrcEntityInfosItem[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludedSrcProcesses
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FallbackToLoggedOnUser
.

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

### -IdentityProtectionCategoryList
.

```yaml
Type: System.Int32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MfaMethods
.

```yaml
Type: System.Int32[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
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

### -OverrideBuiltins
.

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

### -ProtocolType
.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RestrictLoginToOriginatingUser
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleDuration
* '1' - Hour* '2' - Day* '3' - Week* '4' - Month* '5' - Never* '6' - 4 hours* '7' - 12 hours* '8' - 8 hours

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SrcEntityInfos
.
To construct, see NOTES section for SRCENTITYINFOS properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IReactivePolicyInboundBodySrcEntityInfosItem[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SrcProcessNames
.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SrcUserInfos
.
To construct, see NOTES section for SRCUSERINFOS properties and create a hash table.

```yaml
Type: ZeroNetworks.PowerShell.Cmdlets.Api.Models.IReactivePolicyInboundBodySrcUserInfosItem[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -State
* '1' - Enabled* '2' - Disabled

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseDefaultIdp
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseOccasionalMfa
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserId
userId to filter on

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

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

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

### ZeroNetworks.PowerShell.Cmdlets.Api.Models.IReactivePolicyItem

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`ADDITIONALPORTSLIST <IPortsListItem[]>`: .
  - `[Ports <String>]`: 
  - `[ProtocolType <Int32?>]`: * '0' - HOPOPT         * '1' - ICMP         * '2' - IGMP         * '3' - GGP         * '4' - IPv4         * '5' - ST         * '6' - TCP         * '7' - CBT         * '8' - EGP         * '9' - IGP         * '10' - BBN-RCC-MON         * '11' - NVP-II         * '12' - PUP         * '13' - ARGUS         * '14' - EMCON         * '15' - XNET         * '16' - CHAOS         * '17' - UDP         * '18' - MUX         * '19' - DCN-MEAS         * '20' - HMP         * '21' - PRM         * '22' - XNS-IDP         * '23' - TRUNK-1         * '24' - TRUNK-2         * '25' - LEAF-1         * '26' - LEAF-2         * '27' - RDP         * '28' - IRTP         * '29' - ISO-TP4         * '30' - NETBLT         * '31' - MFE-NSP         * '32' - MERIT-INP         * '33' - DCCP         * '34' - 3PC         * '35' - IDPR         * '36' - XTP         * '37' - DDP         * '38' - IDPR-CMTP         * '39' - TP++         * '40' - IL         * '41' - Embedded         * '42' - SDRP         * '43' - IPv6RoutingHeader         * '44' - IPv6FragmentHeader         * '45' - IDRP         * '46' - RSVP         * '47' - GRE         * '48' - DSR         * '49' - BNA         * '50' - ESP         * '51' - AH         * '52' - I-NLSP         * '53' - SwIPe         * '54' - NARP         * '55' - MOBILE         * '56' - TLSP         * '57' - SKIP         * '58' - ICMPv6         * '59' - IPv6NonExtHeader         * '60' - IPv6DestinationOptions         * '61' - Host-interanl         * '62' - CFTP         * '63' - local-network         * '64' - SAT-EXPAK         * '65' - KRYPTOLAN         * '66' - RVD         * '67' - IPPC         * '68' - distributed-file-system         * '69' - SAT-MON         * '70' - VISA         * '71' - IPCU         * '72' - CPNX         * '73' - CPHB         * '74' - WSN         * '75' - PVP         * '76' - BR-SAT-MON         * '77' - ND         * '78' - WB-MON         * '79' - WB-EXPAK         * '80' - ISO-IP         * '81' - VMTP         * '82' - SECURE-VMTP         * '83' - VINES         * '84' - IPTM         * '85' - NSFNET-IGP         * '86' - DGP         * '87' - TCF         * '88' - EIGRP         * '89' - OSPF         * '90' - Sprite-RPC         * '91' - LARP         * '92' - MTP         * '93' - AX.25         * '94' - OS         * '95' - MICP         * '96' - SCC-SP         * '97' - ETHERIP         * '98' - ENCAP         * '99' - private-encryption         * '100' - GMTP         * '101' - IFMP         * '102' - PNNI         * '103' - PIM         * '104' - ARIS         * '105' - SCPS         * '106' - QNX         * '107' - A/N         * '108' - IPComp         * '109' - SNP         * '110' - Compaq-Peer         * '111' - IPX-in-IP         * '112' - VRRP         * '113' - PGM         * '114' - 0-hop         * '115' - L2TP         * '116' - DDX         * '117' - IATP         * '118' - STP         * '119' - SRP         * '120' - UTI         * '121' - SMP         * '122' - SM         * '123' - PTP         * '124' - IS-IS-over-IPv4         * '125' - FIRE         * '126' - CRTP         * '127' - CRUDP         * '128' - SSCOPMCE         * '129' - IPLT         * '130' - SPS         * '131' - PIPE         * '132' - SCTP         * '133' - FC         * '134' - RSVP-E2E-IGNORE         * '135' - Mobility-Header         * '136' - UDPLite         * '137' - MPLS-in-IP         * '138' - manet         * '139' - HIP         * '140' - Shim6         * '141' - WESP         * '142' - ROHC         * '143' - Ethernet         * '144' - 144 (custom)         * '145' - 145 (custom)         * '146' - 146 (custom)         * '147' - 147 (custom)         * '148' - 148 (custom)         * '149' - 149 (custom)         * '150' - 150 (custom)         * '151' - 151 (custom)         * '152' - 152 (custom)         * '153' - 153 (custom)         * '154' - 154 (custom)         * '155' - 155 (custom)         * '156' - 156 (custom)         * '157' - 157 (custom)         * '158' - 158 (custom)         * '159' - 159 (custom)         * '160' - 160 (custom)         * '161' - 161 (custom)         * '162' - 162 (custom)         * '163' - 163 (custom)         * '164' - 164 (custom)         * '165' - 165 (custom)         * '166' - 166 (custom)         * '167' - 167 (custom)         * '168' - 168 (custom)         * '169' - 169 (custom)         * '170' - 170 (custom)         * '171' - 171 (custom)         * '172' - 172 (custom)         * '173' - 173 (custom)         * '174' - 174 (custom)         * '175' - 175 (custom)         * '176' - 176 (custom)         * '177' - 177 (custom)         * '178' - 178 (custom)         * '179' - 179 (custom)         * '180' - 180 (custom)         * '181' - 181 (custom)         * '182' - 182 (custom)         * '183' - 183 (custom)         * '184' - 184 (custom)         * '185' - 185 (custom)         * '186' - 186 (custom)         * '187' - 187 (custom)         * '188' - 188 (custom)         * '189' - 189 (custom)         * '190' - 190 (custom)         * '191' - 191 (custom)         * '192' - 192 (custom)         * '193' - 193 (custom)         * '194' - 194 (custom)         * '195' - 195 (custom)         * '196' - 196 (custom)         * '197' - 197 (custom)         * '198' - 198 (custom)         * '199' - 199 (custom)         * '200' - 200 (custom)         * '201' - 201 (custom)         * '202' - 202 (custom)         * '203' - 203 (custom)         * '204' - 204 (custom)         * '205' - 205 (custom)         * '206' - 206 (custom)         * '207' - 207 (custom)         * '208' - 208 (custom)         * '209' - 209 (custom)         * '210' - 210 (custom)         * '211' - 211 (custom)         * '212' - 212 (custom)         * '213' - 213 (custom)         * '214' - 214 (custom)         * '215' - 215 (custom)         * '216' - 216 (custom)         * '217' - 217 (custom)         * '218' - 218 (custom)         * '219' - 219 (custom)         * '220' - 220 (custom)         * '221' - 221 (custom)         * '222' - 222 (custom)         * '223' - 223 (custom)         * '224' - 224 (custom)         * '225' - 225 (custom)         * '226' - 226 (custom)         * '227' - 227 (custom)         * '228' - 228 (custom)         * '229' - 229 (custom)         * '230' - 230 (custom)         * '231' - 231 (custom)         * '232' - 232 (custom)         * '233' - 233 (custom)         * '234' - 234 (custom)         * '235' - 235 (custom)         * '236' - 236 (custom)         * '237' - 237 (custom)         * '238' - 238 (custom)         * '239' - 239 (custom)         * '240' - 240 (custom)         * '241' - 241 (custom)         * '242' - 242 (custom)         * '243' - 243 (custom)         * '244' - 244 (custom)         * '245' - 245 (custom)         * '246' - 246 (custom)         * '247' - 247 (custom)         * '248' - 248 (custom)         * '249' - 249 (custom)         * '250' - 250 (custom)         * '251' - 251 (custom)         * '252' - 252 (custom)         * '253' - 253 (custom)         * '254' - 254 (custom)         * '255' - Raw         * '256' - Any         

`EXCLUDEDSRCENTITYINFOS <IReactivePolicyInboundBodyExcludedSrcEntityInfosItem[]>`: .
  - `Id <String>`: 

`SRCENTITYINFOS <IReactivePolicyInboundBodySrcEntityInfosItem[]>`: .
  - `Id <String>`: 

`SRCUSERINFOS <IReactivePolicyInboundBodySrcUserInfosItem[]>`: .
  - `Id <String>`: 

## RELATED LINKS


<!-- region Generated -->
# ZeroNetworks
This directory contains the PowerShell module for the Api service.

---
## Status
[![ZeroNetworks](https://img.shields.io/powershellgallery/v/ZeroNetworks.svg?style=flat-square&label=ZeroNetworks "ZeroNetworks")](https://www.powershellgallery.com/packages/ZeroNetworks/)

## Info
- Modifiable: yes
- Generated: all
- Committed: yes
- Packaged: yes

---
## Detail
This module was primarily generated via [AutoRest](https://github.com/Azure/autorest) using the [PowerShell](https://github.com/Azure/autorest.powershell) extension.

## Development
For information on how to develop for `ZeroNetworks`, see [how-to.md](how-to.md).
<!-- endregion -->

### AutoRest Configuration
> see https://aka.ms/autorest

``` yaml
# Zero Networks PowerShell AutoRest Configuration

require:
  - $(this-folder)/../readme.noprofile.md

input-file:
  - $(this-folder)/../openapi.yaml

module-version: 0.0.14-preview
title: Api
  
inlining-threshold: 50

directive:
  # Fixes/overrides to swaggers
  - from: openapi.yaml
    where: $.components.schemas.entity
    debug: true
    transform: >-
      return {
        "type": "object",
        "properties": {
          "createdAt": {
              "$ref": "#/components/schemas/epochMillis"
          },
          "description": {
              "type": "string"
          },
          "directMembersCount": {
              "type": "integer"
          },
          "domain": {
              "type": "string"
          },
          "guid": {
              "type": "string"
          },
          "hasProtectionPolicy": {
              "type": "boolean"
          },
          "id": {
              "type": "string"
          },
          "name": {
              "type": "string"
          },
          "role": {
              "type": "integer",
              "format": "int32"
          },
          "sid": {
              "type": "string"
          },
          "updatedAt": {
              "$ref": "#/components/schemas/epochMillis"
          },
          "distinguishedName": {
              "type": "string"
          },
          "email": {
              "type": "string"
          },
          "firstName": {
              "type": "string"
          },
          "jobTitle": {
              "type": "string"
          },
          "lastLogon": {
              "$ref": "#/components/schemas/epochMillis"
          },
          "lastName": {
              "type": "string"
          },
          "officePhone": {
              "type": "string"
          },
          "phone": {
              "type": "string"
          },
          "userPrincipleName": {
              "type": "string"
          },
          "assetType": {
              "description": "Possible asset status:\n  * `1` - UNKNOWN \n  * `2` - CLIENT \n  * `3` - SERVER \n  * `4` - CLUSTER \n  * `5` - CAMERA \n  * `6` - TV\n  * `7` - FACTORY_CONTROLLER \n  * `8` - MEDICAL_DEVICE\n  * `9` - PRINTER \n  * `10` - SCANNER \n  * `11` - SMART_CARD_READER \n  * `12` - ROUTER \n  * `13` - HYPERVISOR \n  * `14` - PLC \n  * `15` - HMI \n  * `16` - SWITCH \n  * `17` - TERMINAL_STATION \n  * `18` - RTU \n  * `19` - WIRELESS_ACCESS_POINT \n  * `20` - HISTORIAN \n  * `21` - GAME_CONSOLE \n  * `22` - FIRE_ALARM \n  * `23` - UPS \n  * `24` - STORAGE_APPLIANCE \n  * `25` - VIRTUALIZATION_APPLIANCE \n  * `26` - FIREWALL_APPLIANCE \n  * `27` - SECURITY_SCANNER \n  * `28` - SECURITY_CONTROLLER \n  * `29` - DOOR_LOCK \n  * `30` - BIOMETRIC_ENTRY_SYSTEM \n  * `31` - HVAC \n  * `1000` - ROOM_SCHEDULER\n",
              "type": "integer",
              "format": "int32",
              "enum": [
                  0,
                  1,
                  2,
                  3,
                  4,
                  5,
                  6,
                  7,
                  8,
                  9,
                  10,
                  11,
                  12,
                  13,
                  14,
                  15,
                  16,
                  17,
                  18,
                  19,
                  20,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  29,
                  30,
                  31,
                  1000
              ]
          },
          "fqdn": {
              "type": "string",
              "example": "laptoppc.domain.local"
          },
          "ipV4Addresses": {
              "type": "array",
              "items": {
                  "type": "string",
                  "example": "1.1.1.1"
              }
          },
          "ipV6Addresses": {
              "type": "array",
              "items": {
                  "type": "string"
              }
          },
          "assetStatus": {
              "description": "Possible asset status:\n  * `1` - UNDISCOVERED\n  * `2` - STALKED\n  * `3` - DELETED\n  * `4` - OS_UNSUPPORTED\n  * `5` - TYPE_UNSUPPORTED\n  * `6` - IGNORED\n  * `7` - CLOUD_CONNECTOR\n",
              "type": "integer",
              "enum": [
                  1,
                  2,
                  3,
                  4,
                  5,
                  6,
                  7
              ]
          },
          "operatingSystem": {
              "type": "string",
              "example": "Windows 10 Pro"
          },
          "protectionState": {
              "type": "integer",
              "format": "int32",
              "enum": [
                  0,
                  1,
                  2,
                  3,
                  4
              ]
          },
          "source": {
              "description": "Possible asset sources:\n  * `0` - UNSPECIFIED\n  * `1` - PORTAL \n  * `2` - SSP \n  * `3` - AD \n  * `4` - CUSTOM\n  * `5` - SYSTEM\n  * `6` - ANSIBLE\n  * `7` - OT\n  * `8` - WORKGROUP\n  * `9` - AZURE_AD \n  * `10` - AZURE \n  * `11` - AWS \n  * `12` - GCP\n  * `13` - TAG \n  * `14` - JAMF \n  * `15` - LINUX \n  * `16` - IBM \n  * `17` - ORACLE \n  * `18` - VMWARE \n  * `19` - ALIBABA \n  * `20` - LUMEN \n  * `21` - OVH\n",
              "type": "integer",
              "format": "int32",
              "enum": [
                  0,
                  1,
                  2,
                  3,
                  4,
                  5,
                  6,
                  7,
                  8,
                  9,
                  10,
                  11,
                  12,
                  13,
                  14,
                  15,
                  16,
                  17,
                  18,
                  19,
                  20,
                  21
              ]
          },
          "state": {
              "$ref": "#/components/schemas/state"
          }
        }
      }
  - from: openapi.yaml
    where: $.components.schemas.assetsOrGroupsList
    debug: true
    transform: >-
      return {
        "type": "object",
        "properties": {
          "items": {
            "type": "array",
            "items": {
              "type": "object",
              "properties": {
                "assetType": {
                  "description": "Possible asset status:\n  * `1` - UNKNOWN \n  * `2` - CLIENT \n  * `3` - SERVER \n  * `4` - CLUSTER \n  * `5` - CAMERA \n  * `6` - TV\n  * `7` - FACTORY_CONTROLLER \n  * `8` - MEDICAL_DEVICE\n  * `9` - PRINTER \n  * `10` - SCANNER \n  * `11` - SMART_CARD_READER \n  * `12` - ROUTER \n  * `13` - HYPERVISOR \n  * `14` - PLC \n  * `15` - HMI \n  * `16` - SWITCH \n  * `17` - TERMINAL_STATION \n  * `18` - RTU \n  * `19` - WIRELESS_ACCESS_POINT \n  * `20` - HISTORIAN \n  * `21` - GAME_CONSOLE \n  * `22` - FIRE_ALARM \n  * `23` - UPS \n  * `24` - STORAGE_APPLIANCE \n  * `25` - VIRTUALIZATION_APPLIANCE \n  * `26` - FIREWALL_APPLIANCE \n  * `27` - SECURITY_SCANNER \n  * `28` - SECURITY_CONTROLLER \n  * `29` - DOOR_LOCK \n  * `30` - BIOMETRIC_ENTRY_SYSTEM \n  * `31` - HVAC \n  * `1000` - ROOM_SCHEDULER\n",
                  "type": "integer",
                  "format": "int32",
                  "enum": [
                    0,
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                    26,
                    27,
                    29,
                    30,
                    31,
                    1000
                  ]
                },
                "domain": {
                  "type": "string",
                  "example": "domain.local"
                },
                "fqdn": {
                  "type": "string",
                  "example": "laptoppc.domain.local"
                },
                "id": {
                  "type": "string",
                  "example": "a:a:6d020055"
                },
                "ipV4Addresses": {
                  "type": "array",
                  "items": {
                      "type": "string",
                      "example": "1.1.1.1"
                  }
                },
                "ipV6Addresses": {
                  "type": "array",
                  "items": {
                      "type": "string"
                  }
                },
                "assetStatus": {
                  "description": "Possible asset status:\n  * `1` - UNDISCOVERED\n  * `2` - STALKED\n  * `3` - DELETED\n  * `4` - OS_UNSUPPORTED\n  * `5` - TYPE_UNSUPPORTED\n  * `6` - IGNORED\n  * `7` - CLOUD_CONNECTOR\n",
                  "type": "integer",
                  "enum": [
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7
                  ]
                },
                "name": {
                  "type": "string",
                  "example": "laptoppc"
                },
                "operatingSystem": {
                  "type": "string",
                  "example": "Windows 10 Pro"
                },
                "protectionState": {
                  "type": "integer",
                  "format": "int32",
                  "enum": [
                    0,
                    1,
                    2,
                    3,
                    4
                  ]
                },
                "source": {
                  "description": "Possible asset sources:\n  * `0` - UNSPECIFIED\n  * `1` - PORTAL \n  * `2` - SSP \n  * `3` - AD \n  * `4` - CUSTOM\n  * `5` - SYSTEM\n  * `6` - ANSIBLE\n  * `7` - OT\n  * `8` - WORKGROUP\n  * `9` - AZURE_AD \n  * `10` - AZURE \n  * `11` - AWS \n  * `12` - GCP\n  * `13` - TAG \n  * `14` - JAMF \n  * `15` - LINUX \n  * `16` - IBM \n  * `17` - ORACLE \n  * `18` - VMWARE \n  * `19` - ALIBABA \n  * `20` - LUMEN \n  * `21` - OVH\n",
                  "type": "integer",
                  "format": "int32",
                  "enum": [
                    0,
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21
                  ]
                },
                "state": {
                  "$ref": "#/components/schemas/state"
                },
                "createdAt": {
                  "$ref": "#/components/schemas/epochMillis"
                },
                "description": {
                  "type": "string"
                },
                "directMembersCount": {
                  "type": "integer"
                },
                "guid": {
                  "type": "string"
                },
                "hasProtectionPolicy": {
                  "type": "boolean"
                },
                "role": {
                  "type": "integer",
                  "format": "int32"
                },
                "sid": {
                  "type": "string"
                },
                "updatedAt": {
                  "$ref": "#/components/schemas/epochMillis"
                }
              }
            }
          }
        }
      }
  - from: openapi.yaml
    where: $.components.schemas.groupsOrUsersList
    debug: true
    transform: >-
      return {
        "type": "object",
        "properties": {
          "items": {
            "type": "array",
            "items": {
              "type": "object",
              "properties": {
                "createdAt": {
                  "$ref": "#/components/schemas/epochMillis"
                },
                "description": {
                  "type": "string"
                },
                "directMembersCount": {
                  "type": "integer"
                },
                "domain": {
                  "type": "string"
                },
                "guid": {
                  "type": "string"
                },
                "hasProtectionPolicy": {
                  "type": "boolean"
                },
                "id": {
                  "type": "string"
                },
                "name": {
                  "type": "string"
                },
                "role": {
                  "type": "integer",
                  "format": "int32"
                },
                "sid": {
                  "type": "string"
                },
                "updatedAt": {
                  "$ref": "#/components/schemas/epochMillis"
                },
                "distinguishedName": {
                  "type": "string"
                },
                "email": {
                  "type": "string"
                },
                "firstName": {
                  "type": "string"
                },
                "jobTitle": {
                  "type": "string"
                },
                "lastLogon": {
                  "$ref": "#/components/schemas/epochMillis"
                },
                "lastName": {
                  "type": "string"
                },
                "officePhone": {
                  "type": "string"
                },
                "phone": {
                  "type": "string"
                },
                "source": {
                  "type": "integer"
                },
                "userPrincipleName": {
                  "type": "string"
                }
              }
            }
          }
        }
      }
  - from: openapi.yaml
    where: $.components.schemas.roleCandidatesList
    debug: true
    transform: >-
      return {
        "type": "object",
        "properties": {
          "items": {
            "type": "array",
            "items": {
              "type": "object",
              "properties": {
                "createdAt": {
                  "$ref": "#/components/schemas/epochMillis"
                },
                "description": {
                  "type": "string"
                },
                "directMembersCount": {
                  "type": "integer"
                },
                "domain": {
                  "type": "string"
                },
                "guid": {
                  "type": "string"
                },
                "hasProtectionPolicy": {
                  "type": "boolean"
                },
                "id": {
                  "type": "string"
                },
                "name": {
                  "type": "string"
                },
                "role": {
                  "type": "integer",
                  "format": "int32"
                },
                "sid": {
                  "type": "string"
                },
                "updatedAt": {
                  "$ref": "#/components/schemas/epochMillis"
                },
                "distinguishedName": {
                  "type": "string"
                },
                "email": {
                  "type": "string"
                },
                "firstName": {
                  "type": "string"
                },
                "jobTitle": {
                  "type": "string"
                },
                "lastLogon": {
                  "$ref": "#/components/schemas/epochMillis"
                },
                "lastName": {
                  "type": "string"
                },
                "officePhone": {
                  "type": "string"
                },
                "phone": {
                  "type": "string"
                },
                "source": {
                  "type": "integer"
                },
                "userPrincipleName": {
                  "type": "string"
                }
              }
            }
          }
        }
      }
  - from: openapi.yaml
    where: $.components.schemas.rolesList
    debug: true
    transform: >-
      return {
        "type": "object",
        "properties": {
          "items": {
            "type": "array",
            "items": {
              "type": "object",
              "properties": {
                "createdAt": {
                  "$ref": "#/components/schemas/epochMillis"
                },
                "description": {
                  "type": "string"
                },
                "directMembersCount": {
                  "type": "integer"
                },
                "domain": {
                  "type": "string"
                },
                "guid": {
                  "type": "string"
                },
                "hasProtectionPolicy": {
                  "type": "boolean"
                },
                "id": {
                  "type": "string"
                },
                "name": {
                  "type": "string"
                },
                "role": {
                  "type": "integer",
                  "format": "int32"
                },
                "sid": {
                  "type": "string"
                },
                "updatedAt": {
                  "$ref": "#/components/schemas/epochMillis"
                },
                "distinguishedName": {
                  "type": "string"
                },
                "email": {
                  "type": "string"
                },
                "firstName": {
                  "type": "string"
                },
                "jobTitle": {
                  "type": "string"
                },
                "lastLogon": {
                  "$ref": "#/components/schemas/epochMillis"
                },
                "lastName": {
                  "type": "string"
                },
                "officePhone": {
                  "type": "string"
                },
                "phone": {
                  "type": "string"
                },
                "source": {
                  "type": "integer"
                },
                "userPrincipleName": {
                  "type": "string"
                }
              }
            }
          }
        }
      }

  # Following is two common directive which are normally required
  # 1. Remove the unexpanded parameter set
  # 2. For New-* cmdlets, ViaIdentity is not required, so CreateViaIdentityExpanded is removed as well
  - where:
      variant: ^Activate$|^ActivateViaIdentity$|^ActivateViaIdentityExpanded$|^AddViaIdentity$|^AddViaIdentityExpanded$|^Create$|^CreateViaIdentity$|^CreateViaIdentityExpanded$|^Deactivate$|^DeactivateViaIdentity$|^DeactivateViaIdentityExpanded$|^DeleteViaIdentity$|^DeleteViaIdentityExpanded$|^Extend$|^Extend1$|^ExtendViaIdentity$|^ExtendViaIdentityExpanded$|^GetViaIdentity$|^Learn$|^LearnViaIdentity$|^LearnViaIdentityExpanded$|^ProtectViaIdentity$|^Queue$|^Queue1$|^QueueViaIdentity$|^QueueViaIdentityExpanded$|^RevokeViaIdentity$|^SetViaIdentity$|^SetViaIdentityExpanded$|^UnprotectViaIdentity$|^UpdateViaIdentity$|^UpdateViaIdentityExpanded$|^ValidateViaIdentity$
    remove: true
  - where:
      subject: ^CustomGroupsMember$|^TagGroupsMember$
      variant: Delete
    remove: true
  - where:
      subject: UserType
      variant: Update
    remove: true
  - where:
      variant: ^Add$|^Update$
    hide: true
  # Customize
  # Remove the export cmdlets
  - where:
      subject: (.*)Export$
    remove: true
  - where:
      verb: Export
    remove: true
  #Remove Activity cmdlets
  - where:
      subject: (.*)Activity$
    remove: true
  # Remove Role cmdlets
  - where:
      subject: (.*)Role$
    remove: true
  - where:
      verb: Get
      subject: RolesCandidate
    remove: true
  #Remove filters cmdlets
  - where:
      subject: (.*)Filter$
    remove: true
  # remove Ad Sync Info
  - where:
      subject: SettingsAdSyncInfo
    hide: true
  # Hide remove ot (Not implemneted)
  - where:
      verb: Remove
      subject: AssetOt
    hide: true
  # Hide (Not Implemented)
  - where:
      subject: SettingsAssetManager
      verb: ^Add$|^Remove$
    hide: true
  # Hide (Not Implemented)
  - where:
      subject: AuthLogout
      verb: Invoke
    hide: true
  # Hide (Not Implemented)
  - where:
      subject: InvokeAssetRetryHealth
      verb: Invoke
    hide: true
  - where:
      subject: ^AssetsScriptsPowerShellTestUdpNetConnection$|^AssetsScriptsPythonTestUdpNetConnection$|^FixAssetScriptWmi$|^FixAssetsScriptWmi$
    remove: true
  # Hide Rule History (not useful)
  - where:
      subject: (.*)RulesHistory$
    hide: true
  # hide simulate (not useful)
  - where:
      subject: (.*)PoliciesSimulate.*
    hide: true
  # hide linux scripts (not useful)
  - where:
      subject: ^AssetsLinuxScript$|^AssetsLinuxScriptAvailable$
    hide: true
  # Hide profile cmdlets
  - where:
      subject: ^ProfileEnvironment$|^Profile$
    hide: true
  # Hide Not useful for OT assets
  - where:
      subject: ^AssetOtAnalysis$|^AssetOtIdentityRule$|^AssetOtIdentityRulesAssetsCandidate$|^AssetOtIdentityRulesExcludedAssetsCandidate$|^AssetOtIdentityRulesUserCandidate$|^AssetOtInboundRule$|^AssetOtInboundRulesDestinationCandidate$|^AssetOtInboundRulesExcludedDestinationCandidate$|^AssetOtInboundRulesSourceCandidate$|^AssetOtmfaIdentityPoliciesDestinationCandidate$|^AssetOtmfaIdentityPoliciesExcludedSourceCandidate$|^AssetOtmfaIdentityPoliciesMfamethod$|^AssetOtmfaIdentityPoliciesSourceCandidate$|^AssetOtmfaIdentityPoliciesSourceUserCandidate$|^AssetOtmfaIdentityPolicy$|^AssetOtmfaInboundPoliciesDestinationCandidate$|^AssetOtmfaInboundPoliciesExcludedSourceCandidate$|^AssetOtmfaInboundPoliciesMfamethod$|^AssetOtmfaInboundPoliciesSourceCandidate$|^AssetOtmfaInboundPoliciesSourceUserCandidate$|^AssetOtmfaInboundPolicy$|^AssetOtOutboundRule$|^AssetOtmfaOutboundPoliciesDestinationCandidate$|^AssetOtmfaOutboundPoliciesExcludedSourceCandidate$|^AssetOtmfaOutboundPoliciesMfamethod$|^AssetOtmfaOutboundPoliciesSourceCandidate$|^AssetOtmfaOutboundPoliciesSourceUserCandidate$|^AssetOtmfaOutboundPolicy$|^AssetOtOutboundRulesDestinationCandidate$|^AssetOtOutboundRulesExcludedSourceCandidate$|^AssetOtOutboundRulesSourceCandidate$|^AssetOtrpcRule$|^AssetOtrpcRulesDestinationCandidate$|^AssetOtrpcRulesExcludedDestinationCandidate$|^AssetOtrpcRulesSourceCandidate$|^AssetOtrpcRulesUserCandidate$|^AssetOtRulesDistribution$
    hide: true
  # Remove APIs that require Human access
  - where:
      subject: AccessToken
    remove: true
  - where:
      subject: CloudConnectorAccessToken
    remove: true
  - where:
      subject: ServiceNowAccessToken
    remove: true
  # Rename Queue Commands
  - where:
      subject: QueueAssetsNetwork
    set:
      subject: AssetNetworkQueue
  - where:
      subject: QueueAssetNetwork
    set:
      subject: AssetNetworkQueue
  - where:
      subject: QueueAssetExtendNetwork
    set:
      subject: AssetNetworkExtendQueue
  - where:
      subject: QueueAssetsExtendNetwork
    set:
      subject: AssetNetworkExtendQueue
  - where:
      subject: QueueAssetOtNetwork
    set:
      subject: AssetOtNetworkQueue
  - where:
      subject: QueueAssetsOtNetwork
    set:
      subject: AssetOtNetworkQueue
  - where:
      subject:  QueueAssetOtExtendNetwork
    set:
      subject: AssetOtNetworkExtendQueue
  - where:
      subject: QueueAssetsOtExtendNetwork
    set:
      subject: AssetOtNetworkExtendQueue
  - where:
      subject: QueueUsersIdentity
    set:
      subject: UserIdentityQueue
  - where:
      subject: QueueAssetsRpc
    set:
      subject: AssetRpcQueue
  - where:
      subject: QueueAssetsExtendRpc
    set:
      subject: AssetRpcExtendQueue
  - where:
      subject: QueueAssetsIdentity
    set:
      subject: AssetIdentityQueue
  - where:
      subject: QueueAssetsExtendIdentity
    set:
      subject: AssetIdentityExtendQueue
  - where:
      subject: QueueAssetIdentity
    set:
      subject: AssetIdentityQueue
  - where:
      subject: QueueAssetExtendIdentity
    set:
      subject: AssetIdentityExtendQueue
  # rename asset/ot/user queue/protect/unprotect commands
  - where:
      subject: AssetsOtNetworkSegment
      variant: ^Protect$|^Unprotect$
    hide: true
  - where:
      subject: AssetsOtNetworkSegment
      verb: ^Protect$|^Unprotect$
    set:
      subject: AssetOtNetworkSegment
  - where:
      subject: AssetsNetworkSegment
      variant: ^Protect$|^Unprotect$
    hide: true
  - where:
      subject: AssetsNetworkSegment
      verb: ^Protect$|^Unprotect$
    set:
      subject: AssetNetworkSegment
  - where:
      subject: ^AssetsProtect$|^AssetsUnprotect$
      variant: Validate
    hide: true
  - where:
      subject: AssetsNetworkSegment
      verb: Test
    set:
      subject: AssetNetworkSegment
  - where:
      subject: AssetsNetworkUnprotect
      verb: Test
    set:
      subject: AssetNetworkUnprotect
  - where:
      subject: UsersIdentity
      variant: ^Protect$|^Unprotect$
    hide: true
  - where:
      subject: UsersIdentity
      verb: ^Protect$|^Unprotect$
    set:
      subject: UserIdentity
  - where:
      subject: AssetsIdentity
      variant: ^Protect$|^Unprotect$
    hide: true
  - where:
      subject: AssetsIdentity
      verb: ^Protect$|^Unprotect$
    set:
      subject: AssetIdentity
  - where:
      subject: ^AssetsIdentityProtect$|^AssetsIdentityUnprotect$
      variant: Validate
    hide: true
  - where:
      subject: AssetsIdentityProtect
      verb: Test
    set:
      subject: AssetIdentityProtect
  - where:
      subject: AssetsIdentityUnprotect
      verb: Test
    set:
      subject: AssetIdentityUnprotect
  # Rename Protection Policy Cmdlets
  - where:
      subject: IdentityProtectionPolicy
    set:
      subject: SettingsIdentityProtectionPolicy
  - where:
      subject: IdentityProtectionPoliciesGroupCandidate
    set:
      subject: SettingsIdentityProtectionPoliciesCandidate
  - where:
      subject: NetworkProtectionPolicy
    set:
      subject: SettingsNetworkProtectionPolicy
  - where:
      subject: NetworkProtectionPoliciesCandidate
    set:
      subject: SettingsNetworkProtectionPoliciesCandidate
  # combine user search
  - where:
      subject: ^UsersByPrincipalName$|^UsersBySid$
      verb: Search
    set:
      subject: User
  #combine user type
  - where:
      subject: UsersType
      verb: Update
    set:
      subject: UserType
  #combine rpc monitor/segment
  - where:
      subject: ^AssetsRpcMonitoring|^AssetRpcSegment$
      variant: ^Add$|^Delete$
    remove: true
  - where:
      subject: AssetsRpcMonitoring
    set:
      subject: AssetRpcMonitoring
  - where:
      subject: AssetRpcMonitoring
      variant: Add
    hide: false
  - where:
      subject: AssetsRpcSegment
      variant: ^Add$|^Delete$
    remove: true
  - where:
      subject: AssetsRpcSegment
    set:
      subject: AssetRpcSegment
  - where:
      subject: AssetRpcSegment
      variant: Add
    hide: false
  #Combine Active/Inactive
  - where:
      subject: ^AssetActive$|^AssetsActive$|^AssetInactive$|^AssetsInactive$
      variant: Set
    remove: true
  - where:
      subject: AssetsActive
      variant: SetExpanded
    set:
      subject: AssetActive
  - where:
      subject: AssetsInactive
      variant: SetExpanded
    set:
      subject: AssetInactive
  # Combine break glass
  - where:
      subject: AssetsBreakGlass
      verb: Initialize
    set:
      subject: AssetBreakGlass
  - where:
      subject: ^DeactivateAssetsBreakGlass$|^DeactivateAssetBreakGlass$
      verb: Invoke
    set:
      subject: AssetDeactivateBreakGlass
  # change set to update
  - where:
      verb: Set
    set:
      verb: Update
  # set Limit parameter default
  - where:
      parameter-name: Limit
    set:
      default:
        name: Limit Default
        description: Sets the limit parameter to 10
        script: '10'
  # set the default directions for cmdlets
  - where:
      subject: ^AssetInboundRule$|^AssetOtOutboundRule$|^GroupsInboundRule$
      parameter-name: Direction
    set:
      default:
        name: Direction Default
        description: Sets the direction parameter to 1
        script: '1'
  - where:
      subject: ^AssetOutboundRule$|^AssetOtInboundRule$|^GroupsOutboundRule$
      parameter-name: Direction
    set:
      default:
        name: Direction Default
        description: Sets the direction parameter to 2
        script: '2'
  # set AddAncestors parameter default
  - where:
      parameter-name: AddAncestors
    set:
      default:
        name: AddAncestors Default
        description: Sets the AddAncestors parameter to $true
        script: '$true'
  # set expiresAt default for rules
  - where:
      parameter-name: ExpiresAt
      subject: (.*)InboundRule$|(.*)OutboundRule$
    set:
      default:
        name: ExpiresAt Default
        description: Sets the expiresAt parmaeter to 0 or never.
        script: '0'
  # set withCount default
  - where:
      parameter-name: WithCount
    set:
      default:
        name: WithCount Default
        description: Sets the WithCount parmaeter to true.
        script: '$true'
  # Hide for Custom Wrappers
  - where:
      verb: Update
      subject: ^AssetIdentityRule$|^AssetInboundRule$|^AssetMfaIdentityPolicy$|^AssetMFAInboundPolicy$|^AssetMFAOutboundPolicy$|^AssetOutboundRule$|^AssetOtMFAOutboundPolicy$|^AssetRpcRule$|^CustomGroup$|^GroupsIdentityRule$|^GroupsInboundRule$|^GroupsMfaIdentityPolicy$|^GroupsMFAInboundPolicy$|^GroupsMFAOutboundPolicy$|^GroupsOutboundRule$|^GroupsRpcRule$|^IdentityRule$|^InboundRule$|^MfaIdentityPolicy$|^MFAInboundPolicy$|^MFAOutboundPolicy$|^OutboundRule$|^RpcRule$|^SettingsPushNotification$|^UserIdentityRule$|^UserMfaIdentityPolicy$
    hide: true
  - where:
      subject: ^AuthLogin$|^AuthChallenge$
    hide: true
  - where:
      subject: (.*)RuleReview$|(.*)RulesReview$
    hide: true
  # format Responses
  - where:
      model-name: Asset
    set:
      format-table:
        properties:
          - Id
          - Fqdn
          - IPV4Addresses
          - IPV6Addresses
          - Source
          - AssetStatus
          - ProtectionState
  - where:
      model-name: AssetOt
    set:
      format-table:
        properties:
          - Id
          - Fqdn
          - IPV4Addresses
          - IPV6Addresses
          - Source
          - AssetStatus
          - ProtectionState
  - where:
      model-name: Audit
    set:
      format-table:
        properties:
          - IsoTimestamp
          - AuditType
          - DestinationEntitiesList
          - EnforcementSource
          - PerformedByName
  - where:
      model-name: Rule
    set:
      format-table:
        properties:
          - CreatedAt
          - RemoteEntityInfos
          - LocalEntityInfoName
          - ExcludedEntityInfoName
          - RuleClass
          - ActivitiesCount
          - Id
          - CreatedByEnforcementSource
          - State
          - Description
  - where:
      model-name: IdentityRule
    set:
      format-table:
        properties:
          - CreatedAt
          - Id
          - UserInfos
          - AssetInfoName
          - ExcludedAssetInfos
          - IdentityProtectionCategoryList
          - ExpiresAt
          - Ruleclass
          - CreatedByEnforcementSource
          - State
          - Description
  - where:
      model-name: RpcRule
    set:
      format-table:
        properties:
          - CreatedAt
          - Id
          - UserInfos
          - RemoteAssetInfos
          - LocalAssetInfoName
          - ProtocolsList
          - InterfaceUuidsList
          - OpNumbersList
          - Action
          - ExpiresAt
          - RuleClass
          - State
  - where:
      model-name: ReactivePolicy
    set:
      format-table:
        properties:
          - SrcEntityInfos
          - SrcProcessNames
          - SrcUserInfos
          - DstEntityInfoName
          - DstPort
          - DstProcessNames
          - RuleDuration
          - ExtraPorts
          - FallbackToLoggedOnUser
          - MfaMethods
  - where:
      model-name: User
    set:
      format-table:
        properties:
          - Id
          - Name
          - Email
          - Phone
          - JobTitle
          - LastLogon
  - where:
      model-name: Group
    set:
      format-table:
        properties:
          - Id
          - Name
          - Description
          - DirectMembersCount
  - where:
      model-name: settingsIdp
    set:
      format-table:
        properties:
          - identityProviderType
          - isDefault
  - where:
      model-name: SettingsAdForest
    set:
      format-table:
        properties:
          - ForestId
          - ActiveDirectoryInfoDomainName
          - ActiveDirectoryInfoDomainControllerFqdn
          - ActiveDirectoryInfoUsername
          - ActiveDirectoryInfoUseLdaps
  - where:
      model-name: AssetsOrGroupsListItemsItem
    set:
      format-table:
        properties:
          - Id
          - Fqdn
          - Name
          - Description
          - DirectMembersCount
          - IPV4Addresses
          - IPV6Addresses
          - Source
          - AssetStatus
          - ProtectionState
  - where:
      model-name: GroupsOrUsersListItemsItem
    set:
      format-table:
        properties:
          - Id
          - Name
          - Email
          - Description
          - DirectMembersCount
          - Phone
          - JobTitle
          - LastLogon
```

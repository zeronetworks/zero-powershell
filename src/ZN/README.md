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

module-version: 0.0.6-preview
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
          "assetStatus": {
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
          "assetType": {
            "type": "integer",
            "format": "int32",
            "enum": [
              0,
              1,
              2
            ]
          },
          "createdAt": {
            "$ref": "#/components/schemas/epochMillis"
          },
          "description": {
            "type": "string"
          },
          "distinguishedName": {
            "type": "string"
          },
          "directMembersCount": {
            "type": "integer"
          },
          "domain": {
            "type": "string"
          },
          "email": {
            "type": "string"
          },
          "firstName": {
            "type": "string"
          },
          "fqdn": {
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
          "ipV4Addresses": {
            "type": "array",
            "items": {
              "type": "string"
            }
          },
          "ipV6Addresses": {
            "type": "array",
            "items": {
              "type": "string"
            }
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
          "managers": {
            "type": "array",
            "items": {
              "$ref": "#/components/schemas/manager"
            }
          },
          "name": {
            "type": "string"
          },
          "officePhone": {
            "type": "string"
          },
          "operatingSystem": {
            "type": "string"
          },
          "phone": {
            "type": "string"
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
          "role": {
            "type": "integer",
            "format": "int32"
          },
          "sid": {
            "type": "string"
          },
          "source": {
            "type": "integer"
          },
          "state": {
            "$ref": "#/components/schemas/state"
          },
          "updatedAt": {
            "$ref": "#/components/schemas/epochMillis"
          },
          "userPrincipleName": {
            "type": "string"
          }
        }
      }
  - from: openapi.yaml
    where: $.components.schemas.roleItem
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
          "distinguishedName": {
            "type": "string"
          },
          "directMembersCount": {
            "type": "integer"
          },
          "domain": {
            "type": "string"
          },
          "email": {
            "type": "string"
          },
          "firstName": {
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
          "jobTitle": {
            "type": "string"
          },
          "lastName": {
            "type": "string"
          },
          "name": {
            "type": "string"
          },
          "officePhone": {
            "type": "string"
          },
          "phone": {
            "type": "string"
          },
          "role": {
            "type": "integer",
            "format": "int32"
          },
          "sid": {
            "type": "string"
          },
          "source": {
            "type": "integer"
          },
          "updatedAt": {
            "$ref": "#/components/schemas/epochMillis"
          },
          "userPrincipleName": {
            "type": "string"
          }
        }
      }
  - from: openapi.yaml
    where: $.components.schemas.roleCandidate
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
          "distinguishedName": {
            "type": "string"
          },
          "directMembersCount": {
            "type": "integer"
          },
          "domain": {
            "type": "string"
          },
          "email": {
            "type": "string"
          },
          "firstName": {
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
          "jobTitle": {
            "type": "string"
          },
          "lastName": {
            "type": "string"
          },
          "name": {
            "type": "string"
          },
          "officePhone": {
            "type": "string"
          },
          "phone": {
            "type": "string"
          },
          "role": {
            "type": "integer",
            "format": "int32"
          },
          "sid": {
            "type": "string"
          },
          "source": {
            "type": "integer"
          },
          "updatedAt": {
            "$ref": "#/components/schemas/epochMillis"
          },
          "userPrincipleName": {
            "type": "string"
          }
        }
      }
  - from: openapi.yaml
    where: $.components.schemas.userAccessConfigCandidate
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
          "distinguishedName": {
            "type": "string"
          },
          "directMembersCount": {
            "type": "integer"
          },
          "domain": {
            "type": "string"
          },
          "email": {
            "type": "string"
          },
          "firstName": {
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
          "jobTitle": {
            "type": "string"
          },
          "lastName": {
            "type": "string"
          },
          "name": {
            "type": "string"
          },
          "officePhone": {
            "type": "string"
          },
          "phone": {
            "type": "string"
          },
          "role": {
            "type": "integer",
            "format": "int32"
          },
          "sid": {
            "type": "string"
          },
          "source": {
            "type": "integer"
          },
          "updatedAt": {
            "$ref": "#/components/schemas/epochMillis"
          },
          "userPrincipleName": {
            "type": "string"
          }
        }
      }
  - from: openapi.yaml
    where: $.components.schemas.userAccessConfigDestinationsCandidate
    debug: true
    transform: >-
      return {
        "type": "object",
        "properties": {
          "assetStatus": {
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
          "assetType": {
            "type": "integer",
            "format": "int32",
            "enum": [
              0,
              1,
              2
            ]
          },
          "createdAt": {
            "$ref": "#/components/schemas/epochMillis"
          },
          "description": {
            "type": "string"
          },
          "distinguishedName": {
            "type": "string"
          },
          "directMembersCount": {
            "type": "integer"
          },
          "domain": {
            "type": "string"
          },
          "email": {
            "type": "string"
          },
          "firstName": {
            "type": "string"
          },
          "fqdn": {
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
          "ipV4Addresses": {
            "type": "array",
            "items": {
              "type": "string"
            }
          },
          "ipV6Addresses": {
            "type": "array",
            "items": {
              "type": "string"
            }
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
          "managers": {
            "type": "array",
            "items": {
              "$ref": "#/components/schemas/manager"
            }
          },
          "name": {
            "type": "string"
          },
          "officePhone": {
            "type": "string"
          },
          "operatingSystem": {
            "type": "string"
          },
          "phone": {
            "type": "string"
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
          "role": {
            "type": "integer",
            "format": "int32"
          },
          "sid": {
            "type": "string"
          },
          "source": {
            "type": "integer"
          },
          "state": {
            "$ref": "#/components/schemas/state"
          },
          "updatedAt": {
            "$ref": "#/components/schemas/epochMillis"
          },
          "userPrincipleName": {
            "type": "string"
          }
        }
      }
  # Following is two common directive which are normally required
  # 1. Remove the unexpanded parameter set
  # 2. For New-* cmdlets, ViaIdentity is not required, so CreateViaIdentityExpanded is removed as well
  - where:
      variant: ^Add$|^AddViaIdentity$|^AddViaIdentityExpanded$|^Assets$|^AssetsViaIdentity$|^AssetsViaIdentityExpanded$|^Create$|^CreateViaIdentity$|^CreateViaIdentityExpanded$|^DeleteViaIdentity$|^GetViaIdentity$|^Extend$|^ExtendViaIdentity$|^ExtendViaIdentityExpanded$|^Learn$|^LearnViaIdentity$|^LearnViaIdentityExpanded$|^New$|^Protect$|^Put$|^Queue$|^QueueViaIdentity$|^QueueViaIdentityExpanded$|^RevokeViaIdentity&|^SetViaIdentity|^Unprotect$|^Update$|^UpdateViaIdentity$|^UpdateViaIdentityExpanded$|^Validate$
    hide: true
  # Customize
  # Remove the export cmdlets
  - where:
      subject: ^AdGroupsExport$|^AssetsActivitiesExport$|^AssetsExport$|^AssetsAuditExport$|^AssetsInboundAllowRulesExport$|^AssetsInboundBlockRulesExport$|^AssetsOutboundAllowRulesExport$|^AssetsOutboundBlockRulesExport$|^AssetExport$|^AssetAnalysisExport$|^AuditExport$|^EntityAnalysisExport$|^GroupsAuditExport$|^GroupsInboundAllowRulesExport$|^GroupsInboundBlockRulesExport$|^GroupsOutboundAllowRulesExport$|^GroupsOutboundBlockRulesExport$|^GroupsExport$|^InboundAllowRulesExport$|^InboundBlockRulesExport$|^NetworkActivitiesExport$|^OutboundAllowRulesExport$|^OutboundBlockRulesExport$|^UsersExport$
    hide: true
  - where:
      verb: Export
    remove: true
  #Remove NA cmdlets
  - where:
      subject: NetworkActivity
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
  # Rename Queue Commands
  - where:
      subject: LearnAssetQueue
    set:
      subject: AssetsQueueAsset
  - where:
      subject: LearnAssetExtendQueue
    set:
      subject: AssetsExtendQueueAsset
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
      subject: ^AssetsInboundAllowRule$|^AssetsInboundBlockRule$
      parameter-name: Direction
    set:
      default:
        name: Direction Default
        description: Sets the direction parameter to 1
        script: '1'
  - where:
      subject: ^AssetsOutboundAllowRule$|^AssetsOutboundBlockRule$
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
    set:
      default:
        name: ExpiresAt Default
        description: Sets the expiresAt parmaeter to 0 or never.
        script: '0'
  # Hide remove ot (Not implemneted)
  - where:
      verb: Remove
      subject: AssetsOt
    hide: true
  # Hide (Not Implemented)
  - where:
      subject: SettingsAssetManager
      verb: ^Add$|^Remove$
    hide: true
  # Hide Rule History (not useful)
  - where:
      subject: RulesHistory
    hide: true
  # Remove APIs that require Human access
  - where:
      subject: AccessToken
    remove: true
  - where:
      subject: CloudConnectorAccessToken
    remove: true
  # Hide for Custom Wrappers
  - where:
      verb: Update
      subject: ^CustomGroup$|^AssetsInboundAllowRule$|^AssetsInboundBlockRule$|^AssetsMFAInboundPolicy$|^AssetsMFAOutboundPolicy$|^AssetsOutboundAllowRule$|^AssetsOutboundBlockRule$|^InboundAllowRule$|^InboundBlockRule$|^MFAInboundPolicy$|^MFAOutboundPolicy$|^OutboundAllowRule$|^OutboundBlockRule$
    hide: true
  - where:
      subject: ^AuthLogin$|^AuthChallenge$
    hide: true
  - where:
      subject: ^AssetInboundAllowRuleReview$|^AssetsInboundAllowRulesReview$|^AssetInboundBlockRuleReview$|^AssetsInboundBlockRulesReview$|^AssetOutboundAllowRuleReview$|^AssetsOutboundAllowRulesReview$|^AssetOutboundBlockRuleReview$|^AssetsOutboundBlockRulesReview$|^InboundAllowRuleReview$|^InboundAllowRulesReview$|^InboundBlockRuleReview$|^InboundBlockRulesReview$|^OutboundAllowRuleReview$|^OutboundAllowRulesReview$|^OutboundBlockRuleReview$|^OutboundBlockRulesReview$
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
```

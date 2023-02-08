<!-- region Generated -->
# ZN.Api
This directory contains the PowerShell module for the Api service.

---
## Status
[![ZN.Api](https://img.shields.io/powershellgallery/v/ZN.Api.svg?style=flat-square&label=ZN.Api "ZN.Api")](https://www.powershellgallery.com/packages/ZN.Api/)

## Info
- Modifiable: yes
- Generated: all
- Committed: yes
- Packaged: yes

---
## Detail
This module was primarily generated via [AutoRest](https://github.com/Azure/autorest) using the [PowerShell](https://github.com/Azure/autorest.powershell) extension.

## Development
For information on how to develop for `ZN.Api`, see [how-to.md](how-to.md).
<!-- endregion -->

### AutoRest Configuration
> see https://aka.ms/autorest

``` yaml
# Zero Networks PowerShell AutoRest Configuration

require:
  - $(this-folder)/../readme.noprofile.md

input-file:
  - $(this-folder)/../openapi.yaml

module-version: 0.0.4
title: API
  
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

      
  # Following is two common directive which are normally required
  # 1. Remove the unexpanded parameter set
  # 2. For New-* cmdlets, ViaIdentity is not required, so CreateViaIdentityExpanded is removed as well
  - where:
      variant: ^Add$|^AddViaIdentity$|^Create$|^CreateViaIdentity$|^CreateViaIdentityExpanded$|^Put$|^PutViaIdentity$|^Update$|^UpdateViaIdentity$
    remove: true
  # Customize
  # Remove the export cmdlets
  - where:
      subject: ^AssetExport$|^AuditExport$|^EntityAnalysisExport$|^GroupsExport$|^InboundAllowRulesExport$|^InboundBlockRulesExport$|^NetworkActivitiesExport$|^OutboundAllowRulesExport$|^OutboundBlockRulesExport$|^UsersExport$
    remove: true
  - where:
      verb: Export
    remove: true
  #Remove NA cmdlets
  - where:
      subject: NetworkActivity
    remove: true
  #Remove filters cmdlets
  - where:
      subject: (.*)Filter$
    remove: true
  # remove settings cmdlets
  - where:
      subject: (.*)Role(.*)
    remove: true
  - where:
      subject: SettingsAuth
    remove: true
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
  # api bug
  - where:
      subject: CustomGroupsCandidate
    remove: true
  # remove not useful viaIdentity cmdlets
  - where:
      subject: EntityAnalysis
      variant: GetViaIdentity
    remove: true
  - where:
      subject: EntityMemberOf
      variant: GetViaIdentity
    remove: true
  # hide variants that use body
  - where:
      variant: ^Extend$|^Queue$|^Protect&|^Validate$|^Unprotect$|^AddViaIdentityExpanded$|^DeleteViaIdentity$|^GetViaIdentity$|^PutViaIdentityExpanded$|^UpdateViaIdentityExpanded$
    hide: true
  # set expiresAt default for rules
  - where:
      parameter-name: ExpiresAt
    set:
      default:
        name: ExpiresAt Default
        description: Sets the expiresAt parmaeter to 0 or never.
        script: '0'
  # Hide Get Entity for custom object
  - where:
      subject: Entity
    hide: true
  # Hide remove ot (Not implemneted)
  - where:
      subject: AssetsOt
      verb: Remove
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
```

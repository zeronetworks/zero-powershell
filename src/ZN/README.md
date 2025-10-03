<!-- region Generated -->
# ZeroNetworks
This directory contains the PowerShell module for the Api service.

---
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

module-version: 0.0.23-preview
title: Api
  
inlining-threshold: 100

directive:
  # Fixes/overrides to swaggers
  - from: openapi.yaml
    where: $.components.schemas.assetManager
    debug: true
    transform: >-
      return {
        "type": "object",
        "properties": {
          "manager": {
            "type": "object",
            "properties": {
              "addedAt": {
                  "$ref": "#/components/schemas/epochMillis"
              },
              "addedBy": {
                  "$ref": "#/components/schemas/idNamePair"
              },
              "classifiedBy": {
                  "$ref": "#/components/schemas/idNamePair"
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
              "distinguishedName": {
                  "type": "string"
              },
              "domain": {
                  "type": "string"
              },
              "externalId": {
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
              "lastLogonReplicated": {
                  "$ref": "#/components/schemas/epochMillis"
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
              "principalName": {
                  "type": "string"
              },
              "protectionState": {
                  "$ref": "#/components/schemas/userProtectionState"
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
              "source": {
                  "type": "integer"
              },
              "userPrincipleName": {
                  "type": "string"
              },
              "userType": {
                  "type": "integer"
              },
              "protectAt": {
                  "$ref": "#/components/schemas/epochMillis"
              },
              "protectedAt": {
                  "$ref": "#/components/schemas/epochMillis"
              }
            }
          },
          "managerId": {
              "type": "string"
          },
          "permission": {
              "type": "integer",
              "format": "int32"
          },
          "relation": {
              "type": "integer",
              "format": "int32"
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
                "addedAt": {
                    "$ref": "#/components/schemas/epochMillis"
                },
                "addedBy": {
                    "$ref": "#/components/schemas/idNamePair"
                },
                "assetStatus": {
                    "$ref": "#/components/schemas/assetStatus"
                },
                "assetType": {
                    "$ref": "#/components/schemas/assetType"
                },
                "assignedDeployment": {
                    "$ref": "#/components/schemas/idNamePair"
                },
                "assignedDeploymentId": {
                    "type": "string"
                },
                "breakGlassActivated": {
                    "type": "boolean"
                },
                "cloudConnectorVersion": {
                    "type": "string"
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
                "domain": {
                    "type": "string",
                    "example": "domain.local"
                },
                "fqdn": {
                    "type": "string",
                    "example": "laptoppc.domain.local"
                },
                "externalId": {
                    "type": "string"
                },
                "guid": {
                    "type": "string"
                },
                "hasProtectionPolicy": {
                    "type": "boolean"
                },
                "healthState": {
                    "$ref": "#/components/schemas/healthState"
                },
                "id": {
                    "type": "string",
                    "example": "a:a:6d020055"
                },
                "identityProtectAt": {
                    "$ref": "#/components/schemas/epochMillis"
                },
                "identityProtectionState": {
                    "$ref": "#/components/schemas/identityProtectionState"
                },
                "inactiveReason": {
                    "$ref": "#/components/schemas/inactiveReason"
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
                        "type": "string",
                        "example": "fe80::17f:884b:250e:7759"
                    }
                },
                "lastLogon": {
                    "$ref": "#/components/schemas/epochMillis"
                },
                "name": {
                    "type": "string",
                    "example": "laptoppc"
                },
                "operatingSystem": {
                    "type": "string",
                    "example": "Windows 10 Pro"
                },
                "passwordUpdateTime": {
                    "$ref": "#/components/schemas/epochMillis"
                },
                "preferredDeployment": {
                    "$ref": "#/components/schemas/idNamePair"
                },
                "preferredDeploymentId": {
                    "type": "string"
                },
                "principalName": {
                    "type": "string"
                },
                "protectedAt": {
                    "$ref": "#/components/schemas/epochMillis"
                },
                "protectionState": {
                    "$ref": "#/components/schemas/protectionState"
                },
                "role": {
                    "type": "integer",
                    "format": "int32"
                },
                "sid": {
                    "type": "string"
                },
                "rpcMonitored": {
                    "type": "boolean"
                },
                "rpcProtectedAt": {
                    "$ref": "#/components/schemas/epochMillis"
                },
                "rpcProtectionState": {
                    "$ref": "#/components/schemas/rpcProtectionState"
                },
                "source": {
                    "$ref": "#/components/schemas/source"
                },
                "state": {
                    "$ref": "#/components/schemas/state"
                },
                "updatedAt": {
                    "$ref": "#/components/schemas/epochMillis"
                }
              }
            }
          },
          "scrollCursor": {
            "type": "string"
          }
        }
      }
  - from: openapi.yaml
    where: $.components.schemas.candidatesList
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
                    "type": "integer"
                },
                "breakGlassActivated": {
                    "type": "boolean"
                },
                "domain": {
                    "type": "string"
                },
                "email": {
                    "type": "string"
                },
                "guid": {
                    "type": "string"
                },
                "hasIdentityProtectionPolicy": {
                    "type": "boolean"
                },
                "hasNetworkProtectionPolicy": {
                    "type": "boolean"
                },
                "id": {
                    "type": "string"
                },
                "identityProtectionState": {
                    "$ref": "#/components/schemas/identityProtectionState"
                },
                "name": {
                    "type": "string"
                },
                "protectionState": {
                    "$ref": "#/components/schemas/protectionState"
                },
                "rpcProtectionState": {
                    "$ref": "#/components/schemas/rpcProtectionState"
                },
                "sid": {
                    "type": "string"
                }
              }
            }
          },
          "scrollCursor": {
              "type": "string"
          }
        }
      }
  - from: openapi.yaml
    where: $.components.schemas.entity
    debug: true
    transform: >-
      return {
        "type": "object",
        "properties": {
          "addedAt": {
              "$ref": "#/components/schemas/epochMillis"
          },
          "addedBy": {
              "$ref": "#/components/schemas/idNamePair"
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
          "assetStatus": {
              "$ref": "#/components/schemas/assetStatus"
          },
          "assetType": {
              "$ref": "#/components/schemas/assetType"
          },
          "assignedDeployment": {
              "$ref": "#/components/schemas/idNamePair"
          },
          "assignedDeploymentId": {
              "type": "string"
          },
          "breakGlassActivated": {
              "type": "boolean"
          },
          "cloudConnectorVersion": {
              "type": "string"
          },
          "domain": {
              "type": "string",
              "example": "domain.local"
          },
          "externalId": {
              "type": "string"
          },
          "guid": {
              "type": "string"
          },
          "hasProtectionPolicy": {
              "type": "boolean"
          },
          "fqdn": {
              "type": "string",
              "example": "laptoppc.domain.local"
          },
          "healthState": {
              "$ref": "#/components/schemas/healthState"
          },
          "id": {
              "type": "string",
              "example": "a:a:6d020055"
          },
          "identityProtectAt": {
              "$ref": "#/components/schemas/epochMillis"
          },
          "identityProtectionState": {
              "$ref": "#/components/schemas/identityProtectionState"
          },
          "inactiveReason": {
              "$ref": "#/components/schemas/inactiveReason"
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
                  "type": "string",
                  "example": "fe80::17f:884b:250e:7759"
              }
          },
          "lastLogon": {
              "$ref": "#/components/schemas/epochMillis"
          },
          "name": {
              "type": "string",
              "example": "laptoppc"
          },
          "operatingSystem": {
              "type": "string",
              "example": "Windows 10 Pro"
          },
          "passwordUpdateTime": {
              "$ref": "#/components/schemas/epochMillis"
          },
          "preferredDeployment": {
              "$ref": "#/components/schemas/idNamePair"
          },
          "preferredDeploymentId": {
              "type": "string"
          },
          "principalName": {
              "type": "string"
          },
          "protectedAt": {
              "$ref": "#/components/schemas/epochMillis"
          },
          "protectionState": {
              "$ref": "#/components/schemas/protectionState"
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
          "rpcMonitored": {
              "type": "boolean"
          },
          "rpcProtectedAt": {
              "$ref": "#/components/schemas/epochMillis"
          },
          "rpcProtectionState": {
              "$ref": "#/components/schemas/rpcProtectionState"
          },
          "source": {
              "$ref": "#/components/schemas/source"
          },
          "state": {
              "$ref": "#/components/schemas/state"
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
          "scrollCursor": {
            "type": "string"
          }, 
          "items": {
            "type": "array",
            "items": {
              "type": "object",
              "properties": {
                "addedAt": {
                    "$ref": "#/components/schemas/epochMillis"
                },
                "addedBy": {
                    "$ref": "#/components/schemas/idNamePair"
                },
                "classifiedBy": {
                    "$ref": "#/components/schemas/idNamePair"
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
                "externalId": {
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
                "lastLogonReplicated": {
                    "$ref": "#/components/schemas/epochMillis"
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
                "principalName": {
                    "type": "string"
                },
                "protectedAt": {
                    "$ref": "#/components/schemas/epochMillis"
                },
                "protectionState": {
                    "$ref": "#/components/schemas/userProtectionState"
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
                "userPrincipleName": {
                    "type": "string"
                },
                "userType": {
                    "type": "integer"
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
    where: $.components.schemas.managedAsset
    debug: true
    transform: >-
      return {
        "type": "object",
        "properties": {
          "entity": {
            "type": "object",
            "properties": {
              "addedAt": {
                  "$ref": "#/components/schemas/epochMillis"
              },
              "addedBy": {
                  "$ref": "#/components/schemas/idNamePair"
              },
              "assetStatus": {
                  "$ref": "#/components/schemas/assetStatus"
              },
              "assetType": {
                  "$ref": "#/components/schemas/assetType"
              },
              "assignedDeployment": {
                  "$ref": "#/components/schemas/idNamePair"
              },
              "assignedDeploymentId": {
                  "type": "string"
              },
              "breakGlassActivated": {
                  "type": "boolean"
              },
              "cloudConnectorVersion": {
                  "type": "string"
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
              "domain": {
                  "type": "string",
                  "example": "domain.local"
              },
              "fqdn": {
                  "type": "string",
                  "example": "laptoppc.domain.local"
              },
              "externalId": {
                  "type": "string"
              },
              "guid": {
                  "type": "string"
              },
              "hasProtectionPolicy": {
                  "type": "boolean"
              },
              "healthState": {
                  "$ref": "#/components/schemas/healthState"
              },
              "id": {
                  "type": "string",
                  "example": "a:a:6d020055"
              },
              "identityProtectAt": {
                  "$ref": "#/components/schemas/epochMillis"
              },
              "identityProtectionState": {
                  "$ref": "#/components/schemas/identityProtectionState"
              },
              "inactiveReason": {
                  "$ref": "#/components/schemas/inactiveReason"
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
                      "type": "string",
                      "example": "fe80::17f:884b:250e:7759"
                  }
              },
              "lastLogon": {
                  "$ref": "#/components/schemas/epochMillis"
              },
              "name": {
                  "type": "string",
                  "example": "laptoppc"
              },
              "operatingSystem": {
                  "type": "string",
                  "example": "Windows 10 Pro"
              },
              "passwordUpdateTime": {
                  "$ref": "#/components/schemas/epochMillis"
              },
              "preferredDeployment": {
                  "$ref": "#/components/schemas/idNamePair"
              },
              "preferredDeploymentId": {
                  "type": "string"
              },
              "principalName": {
                  "type": "string"
              },
              "protectedAt": {
                  "$ref": "#/components/schemas/epochMillis"
              },
              "protectionState": {
                  "$ref": "#/components/schemas/protectionState"
              },
              "role": {
                  "type": "integer",
                  "format": "int32"
              },
              "sid": {
                  "type": "string"
              },
              "rpcMonitored": {
                  "type": "boolean"
              },
              "rpcProtectedAt": {
                  "$ref": "#/components/schemas/epochMillis"
              },
              "rpcProtectionState": {
                  "$ref": "#/components/schemas/rpcProtectionState"
              },
              "source": {
                  "$ref": "#/components/schemas/source"
              },
              "state": {
                  "$ref": "#/components/schemas/state"
              },
              "updatedAt": {
                  "$ref": "#/components/schemas/epochMillis"
              }
            }
          },
          "entityId": {
              "type": "string"
          },
          "permission": {
              "type": "integer",
              "format": "int32"
          },
          "relation": {
              "type": "integer",
              "format": "int32"
          }
        }
      }
  - from: openapi.yaml
    where: $.components.schemas.manager
    debug: true
    transform: >-
      return {
        "type": "object",
        "properties": {
          "manager": {
            "type": "object",
            "properties": {
              "addedAt": {
                  "$ref": "#/components/schemas/epochMillis"
              },
              "addedBy": {
                  "$ref": "#/components/schemas/idNamePair"
              },
              "classifiedBy": {
                  "$ref": "#/components/schemas/idNamePair"
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
              "distinguishedName": {
                  "type": "string"
              },
              "domain": {
                  "type": "string"
              },
              "externalId": {
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
              "lastLogonReplicated": {
                  "$ref": "#/components/schemas/epochMillis"
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
              "principalName": {
                  "type": "string"
              },
              "protectedAt": {
                  "$ref": "#/components/schemas/epochMillis"
              },
              "protectionState": {
                  "$ref": "#/components/schemas/userProtectionState"
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
              "source": {
                  "type": "integer"
              },
              "userPrincipleName": {
                  "type": "string"
              },
              "userType": {
                  "type": "integer"
              }
            }
          },
          "managerId": {
              "type": "string"
          },
          "permission": {
              "type": "integer",
              "format": "int32"
          },
          "relation": {
              "type": "integer",
              "format": "int32"
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
                "addedAt": {
                    "$ref": "#/components/schemas/epochMillis"
                },
                "addedBy": {
                    "$ref": "#/components/schemas/idNamePair"
                },
                "classifiedBy": {
                    "$ref": "#/components/schemas/idNamePair"
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
                "distinguishedName": {
                    "type": "string"
                },
                "domain": {
                    "type": "string"
                },
                "externalId": {
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
                "lastLogonReplicated": {
                    "$ref": "#/components/schemas/epochMillis"
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
                "principalName": {
                    "type": "string"
                },
                "protectedAt": {
                    "$ref": "#/components/schemas/epochMillis"
                },
                "protectionState": {
                    "$ref": "#/components/schemas/userProtectionState"
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
                "source": {
                    "type": "integer"
                },
                "userPrincipleName": {
                    "type": "string"
                },
                "userType": {
                    "type": "integer"
                }
              }
            }
          },
          "scrollCursor": {
              "type": "string"
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
                "addedAt": {
                    "$ref": "#/components/schemas/epochMillis"
                },
                "addedBy": {
                    "$ref": "#/components/schemas/idNamePair"
                },
                "classifiedBy": {
                    "$ref": "#/components/schemas/idNamePair"
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
                "distinguishedName": {
                    "type": "string"
                },
                "domain": {
                    "type": "string"
                },
                "externalId": {
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
                "lastLogonReplicated": {
                    "$ref": "#/components/schemas/epochMillis"
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
                "principalName": {
                    "type": "string"
                },
                "protectedAt": {
                    "$ref": "#/components/schemas/epochMillis"
                },
                "protectionState": {
                    "$ref": "#/components/schemas/userProtectionState"
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
                "source": {
                    "type": "integer"
                },
                "userPrincipleName": {
                    "type": "string"
                },
                "userType": {
                    "type": "integer"
                }
              }
            }
          },
          "scrollCursor": {
              "type": "string"
          }
        }
      }
  - from: openapi.yaml
    where: $.components.schemas.rule
    debug: true
    transform: >-
      return {
        "type": "object",
        "properties": {
            "action": {
                "$ref": "#/components/schemas/ruleAction"
            },
            "activitiesCount": {
                "type": "integer",
                "format": "int32"
            },
            "approvedAt": {
                "$ref": "#/components/schemas/epochMillis"
            },
            "approvedBy": {
                "$ref": "#/components/schemas/idNamePair"
            },
            "mirrorSwitchRuleId": {
                "type": "string",
                "format": "uuid"
            },
            "createdAt": {
                "$ref": "#/components/schemas/epochMillis"
            },
            "createdBy": {
                "$ref": "#/components/schemas/createdBy"
            },
            "description": {
                "type": "string"
            },
            "direction": {
                "$ref": "#/components/schemas/ruleDirection"
            },
            "excludedEntityInfos": {
                "type": "array",
                "items": {
                    "$ref": "#/components/schemas/idNamePair"
                }
            },
            "excludedLocalIdsList": {
                "type": "array",
                "items": {
                    "type": "string"
                }
            },
            "expiresAt": {
                "$ref": "#/components/schemas/epochMillis"
            },
            "id": {
                "type": "string",
                "format": "uuid"
            },
            "ipSecOpt": {
                "$ref": "#/components/schemas/ipSecOpt"
            },
            "localEntityId": {
                "type": "string"
            },
            "localEntityInfos": {
                "type": "array",
                "items": {
                    "type": "object",
                    "properties": {
                        "assetStatus": {
                            "$ref": "#/components/schemas/assetStatus"
                        },
                        "assetType": {
                            "$ref": "#/components/schemas/assetType"
                        },
                        "assignedDeploymentId": {
                            "type": "string"
                        },
                        "breakGlassActivated": {
                            "type": "boolean"
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
                        "domain": {
                            "type": "string",
                            "example": "domain.local"
                        },
                        "externalId": {
                            "type": "string"
                        },
                        "fqdn": {
                            "type": "string",
                            "example": "laptoppc.domain.local"
                        },
                        "hasProtectionPolicy": {
                            "type": "boolean"
                        },
                        "healthState": {
                            "$ref": "#/components/schemas/healthState"
                        },
                        "id": {
                            "type": "string",
                            "example": "a:a:6d020055"
                        },
                        "identityProtectedAt": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "identityProtectionState": {
                            "$ref": "#/components/schemas/identityProtectionState"
                        },
                        "inactiveReason": {
                            "$ref": "#/components/schemas/inactiveReason"
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
                        "lastLogonReplicated": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "name": {
                            "type": "string",
                            "example": "laptoppc"
                        },
                        "operatingSystem": {
                            "type": "string",
                            "example": "Windows 10 Pro"
                        },
                        "passwordUpdateTime": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "preferredDeploymentId": {
                            "type": "string"
                        },
                        "principalName": {
                            "type": "string"
                        },
                        "protectAt": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "protectionState": {
                            "$ref": "#/components/schemas/protectionState"
                        },
                        "role": {
                            "type": "integer",
                            "format": "int32"
                        },
                        "rpcMonitored": {
                            "type": "boolean"
                        },
                        "rpcProtectionState": {
                            "$ref": "#/components/schemas/protectionState"
                        },
                        "source": {
                            "$ref": "#/components/schemas/source"
                        },
                        "state": {
                            "$ref": "#/components/schemas/state"
                        },
                        "sid": {
                            "type": "string"
                        },
                        "guid": {
                            "type": "string"
                        },
                        "userAccountControl": {
                            "type": "integer"
                        },
                        "servicePrincipleNames": {
                            "type": "array",
                            "items": {
                                "type": "string"
                            }
                        },
                        "distinguishedName": {
                            "type": "string"
                        },
                        "addedAt": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "addedBy": {
                            "type": "object",
                            "properties": {
                                "id": {
                                    "type": "string"
                                },
                                "name": {
                                    "type": "string",
                                    "example": "User Name"
                                }
                            }
                        },
                        "protectedAt": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "identityProtectAt": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "rpcProtectAt": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "rpcProtectedAt": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "assignedDeployment": {
                            "$ref": "#/components/schemas/idNamePair"
                        },
                        "preferredDeployment": {
                            "$ref": "#/components/schemas/idNamePair"
                        },
                        "inactiveSince": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "environmentGroup": {
                            "$ref": "#/components/schemas/idNamePair"
                        },
                        "updatedAt": {
                            "$ref": "#/components/schemas/epochMillis"
                        }
                    }
                }
            },
            "localEntitySuccessor": {
              "type": "array",
              "items": {
                "$ref": "#/components/schemas/idNamePair"
              }
            },
            "localProcessesList": {
              "type": "array",
              "items": {
                "type": "string"
              }
            },
            "parentId": {
              "type": "string"
            },
            "parentType": {
              "type": "integer",
              "format": "int32"
            },
            "portsList": {
              "$ref": "#/components/schemas/portsList"
            },
            "remoteEntityIdsList": {
              "type": "array",
              "items": {
                "type": "string"
              }
            },
            "remoteEntityInfos": {
              "type": "array",
              "items": {
                "$ref": "#/components/schemas/idNamePair"
              }
            },
            "ruleclass": {
              "$ref": "#/components/schemas/ruleClass"
            },
            "servicesList": {
              "type": "array",
              "items": {
                "type": "string"
              }
            },
            "srcUserInfos": {
              "type": "array",
              "items": {
                "$ref": "#/components/schemas/groupsOrUsersList"
              }
            },
            "srcUsersList": {
              "$ref": "#/components/schemas/srcUsersList"
            },
            "state": {
              "$ref": "#/components/schemas/ruleState"
            },
            "updatedAt": {
              "$ref": "#/components/schemas/epochMillis"
            },
            "updatedBy": {
              "$ref": "#/components/schemas/idNamePair"
            }
          }
        }
  - from: openapi.yaml
    where: $.components.schemas.settingsEventsReceiverConfig
    debug: true
    transform: >-
      return {
        "type": "object",
        "properties": {
            "config": {
                "type": "object",
                "properties": {
                    "auditsEndpoint": {
                    "type": "string"
                    },
                    "identityActivitiesEndpoint": {
                    "type": "string"
                    },
                    "networkActivitiesEndpoint": {
                    "type": "string"
                    },
                    "receiverType": {
                    "type": "integer"
                    },
                    "receiverConfig": {
                        "type": "object",
                        "properties": {
                            "url": {
                                "type": "string"
                            },
                            "tenantId": {
                                "type": "string"
                            },
                            "clientId": {
                                "type": "string"
                            },
                            "hecUri": {
                                "type": "string"
                            }
                        }
                    },
                    "rpcActivitiesEndpoint": {
                    "type": "string"
                    }
                }
            }
        }
      }
  - from: openapi.yaml
    where: $.components.schemas.settingsEventsReceiverConfigBody
    debug: true
    transform: >-
      return {
        "type": "object",
        "properties": {
            "auditsEndpoint": {
              "type": "string"
            },
            "identityActivitiesEndpoint": {
              "type": "string"
            },
            "networkActivitiesEndpoint": {
              "type": "string"
            },
            "receiverConfig": {
                "type": "object",
                "properties": {
                    "url": {
                        "type": "string"
                    },
                    "apiKey": {
                        "type": "string"
                    },
                    "tenantId": {
                        "type": "string"
                    },
                    "clientId": {
                        "type": "string"
                    },
                    "clientSecret": {
                        "type": "string"
                    },
                    "hecUri": {
                        "type": "string"
                    },
                    "token": {
                        "type": "string"
                    }
                }
            },
            "rpcActivitiesEndpoint": {
              "type": "string"
            }
        },
        "required": [
            "receiverConfig"
        ]
      }
  - from: openapi.yaml
    where: $.components.schemas.settingsMfaCache
    debug: true
    transform: >-
      return {
        "type": "object",
        "properties": {
          "assetLimit": {
              "type": "integer"
          },
          "entityId": {
              "type": "string"
          },
          "ttlMinutes": {
              "type": "integer"
          },
          "entityInfo": {
            "type": "object",
            "properties": {
              "addedAt": {
                  "$ref": "#/components/schemas/epochMillis"
              },
              "addedBy": {
                  "$ref": "#/components/schemas/idNamePair"
              },
              "classifiedBy": {
                  "$ref": "#/components/schemas/idNamePair"
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
              "distinguishedName": {
                  "type": "string"
              },
              "domain": {
                  "type": "string"
              },
              "externalId": {
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
              "lastLogonReplicated": {
                  "$ref": "#/components/schemas/epochMillis"
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
              "principalName": {
                  "type": "string"
              },
              "protectedAt": {
                  "$ref": "#/components/schemas/epochMillis"
              },
              "protectionState": {
                  "$ref": "#/components/schemas/userProtectionState"
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
              "source": {
                  "type": "integer"
              },
              "userPrincipleName": {
                  "type": "string"
              },
              "userType": {
                  "type": "integer"
              }
            }
          }
        }
      }
  - from: openapi.yaml
    where: $.components.schemas.switchRule
    debug: true
    transform: >-
      return {
        "type": "object",
        "properties": {
            "action": {
                "$ref": "#/components/schemas/ruleAction"
            },
            "activitiesCount": {
                "type": "integer",
                "format": "int32"
            },
            "approvedAt": {
                "$ref": "#/components/schemas/epochMillis"
            },
            "approvedBy": {
                "$ref": "#/components/schemas/idNamePair"
            },
            "createdAt": {
                "$ref": "#/components/schemas/epochMillis"
            },
            "createdBy": {
                "$ref": "#/components/schemas/createdBy"
            },
            "description": {
                "type": "string"
            },
            "direction": {
                "$ref": "#/components/schemas/ruleDirection"
            },
            "excludedAssetInfos": {
                "type": "array",
                "items": {
                    "$ref": "#/components/schemas/idNamePair"
                }
            },
            "excludedLocalIdsList": {
                "type": "array",
                "items": {
                    "type": "string"
                }
            },
            "expiresAt": {
                "$ref": "#/components/schemas/epochMillis"
            },
            "id": {
                "type": "string"
            },
            "localEntityId": {
                "type": "string"
            },
            "localEntityInfos": {
                "type": "array",
                "items": {
                    "type": "object",
                    "properties": {
                        "assetStatus": {
                            "$ref": "#/components/schemas/assetStatus"
                        },
                        "assetType": {
                            "$ref": "#/components/schemas/assetType"
                        },
                        "assignedDeploymentId": {
                            "type": "string"
                        },
                        "breakGlassActivated": {
                            "type": "boolean"
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
                        "domain": {
                            "type": "string",
                            "example": "domain.local"
                        },
                        "externalId": {
                            "type": "string"
                        },
                        "fqdn": {
                            "type": "string",
                            "example": "laptoppc.domain.local"
                        },
                        "hasProtectionPolicy": {
                            "type": "boolean"
                        },
                        "healthState": {
                            "$ref": "#/components/schemas/healthState"
                        },
                        "id": {
                            "type": "string",
                            "example": "a:a:6d020055"
                        },
                        "identityProtectedAt": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "identityProtectionState": {
                            "$ref": "#/components/schemas/identityProtectionState"
                        },
                        "inactiveReason": {
                            "$ref": "#/components/schemas/inactiveReason"
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
                        "lastLogonReplicated": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "name": {
                            "type": "string",
                            "example": "laptoppc"
                        },
                        "operatingSystem": {
                            "type": "string",
                            "example": "Windows 10 Pro"
                        },
                        "passwordUpdateTime": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "preferredDeploymentId": {
                            "type": "string"
                        },
                        "principalName": {
                            "type": "string"
                        },
                        "protectAt": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "protectionState": {
                            "$ref": "#/components/schemas/protectionState"
                        },
                        "role": {
                            "type": "integer",
                            "format": "int32"
                        },
                        "rpcMonitored": {
                            "type": "boolean"
                        },
                        "rpcProtectionState": {
                            "$ref": "#/components/schemas/protectionState"
                        },
                        "source": {
                            "$ref": "#/components/schemas/source"
                        },
                        "state": {
                            "$ref": "#/components/schemas/state"
                        },
                        "sid": {
                            "type": "string"
                        },
                        "guid": {
                            "type": "string"
                        },
                        "userAccountControl": {
                            "type": "integer"
                        },
                        "servicePrincipleNames": {
                            "type": "array",
                            "items": {
                                "type": "string"
                            }
                        },
                        "distinguishedName": {
                            "type": "string"
                        },
                        "addedAt": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "addedBy": {
                            "type": "object",
                            "properties": {
                                "id": {
                                    "type": "string"
                                },
                                "name": {
                                    "type": "string",
                                    "example": "User Name"
                                }
                            }
                        },
                        "protectedAt": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "identityProtectAt": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "rpcProtectAt": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "rpcProtectedAt": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "assignedDeployment": {
                            "$ref": "#/components/schemas/idNamePair"
                        },
                        "preferredDeployment": {
                            "$ref": "#/components/schemas/idNamePair"
                        },
                        "inactiveSince": {
                            "$ref": "#/components/schemas/epochMillis"
                        },
                        "environmentGroup": {
                            "$ref": "#/components/schemas/idNamePair"
                        },
                        "updatedAt": {
                            "$ref": "#/components/schemas/epochMillis"
                        }
                    }
                }
            },
            "localProcessesList": {
                "type": "array",
                "items": {
                    "type": "string"
                }
            },
            "mirrorNetworkRuleId": {
                "type": "string",
                "format": "uuid"
            },
            "mirrorSwitchRuleId": {
                "type": "string",
                "format": "uuid"
            },
            "multipleLocalEntityIdsList": {
                "type": "array",
                "items": {
                    "type": "string"
                }
            },
            "policyParentRuleId": {
                "type": "string"
            },
            "policyParentRuleType": {
                "type": "integer"
            },
            "protocolsList": {
                "type": "array",
                "items": {
                    "$ref": "#/components/schemas/switchProtocolsList"
                }
            },
            "remoteEntitiesIdList": {
                "type": "array",
                "items": {
                    "type": "string"
                }
            },
            "remoteEntitiesInfos": {
                "type": "array",
                "items": {
                    "$ref": "#/components/schemas/idNamePair"
                }
            },
            "servicesList": {
                "type": "array",
                "items": {
                    "type": "string"
                }
            },
            "shouldBuildMirrorRules": {
                "type": "boolean"
            },
            "srcUserInfos": {
                "type": "array",
                "items": {
                    "$ref": "#/components/schemas/idNamePair"
                }
            },
            "srcUsersList": {
              "$ref": "#/components/schemas/srcUsersList"
            },
            "state": {
                "$ref": "#/components/schemas/ruleState"
            },
            "switchParentRuleId": {
                "type": "string"
            },
            "switchParentRuleType": {
                "type": "integer"
            },
            "updatedAt": {
                "$ref": "#/components/schemas/epochMillis"
            },
            "updatedBy": {
                "$ref": "#/components/schemas/idNamePair"
            }
          }
        }   
  # Following is two common directive which are normally required
  # 1. Remove the unexpanded parameter set
  # 2. For New-* cmdlets, ViaIdentity is not required, so CreateViaIdentityExpanded is removed as well
  - where:
      variant: ^Activate$|^ActivateViaIdentity$|^ActivateViaIdentityExpanded$|^AddViaIdentity$|^AddViaIdentityExpanded$|^Create$|^CreateViaIdentity$|^CreateViaIdentityExpanded$|^Deactivate$|^DeactivateViaIdentity$|^DeactivateViaIdentityExpanded$|^DeleteViaIdentity$|^DeleteViaIdentityExpanded$|^Enable$|^EnableViaIdentity$|^EnableViaIdentityExpanded$|^ExpandViaIdentity$|^Extend$|^Extend1$|^ExtendViaIdentity$|^ExtendViaIdentityExpanded$|^Generate$|^GenerateViaIdentity$|^GenerateViaIdentityExpanded$|^GetViaIdentity$|^Learn$|^LearnViaIdentity$|^LearnViaIdentityExpanded$|^Mirror$|^Mirror1$|^MirrorViaIdentity$|^MirrorViaIdentityExpanded$|^Notify$|^NotifyViaIdentity$|^ProtectViaIdentity$|^ProtectViaIdentityExpanded$|^Queue$|^Queue1$|^QueueViaIdentity$|^QueueViaIdentityExpanded$|^RevokeViaIdentity$|^SearchViaIdentity$|^Set$|^SetViaIdentity$|^SetViaIdentityExpanded$|^UnprotectViaIdentity$|^UnprotectViaIdentityExpanded$|^UpdateViaIdentity$|^UpdateViaIdentityExpanded$|^ValidateViaIdentity$
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
  - where:
      subject: SettingsAdOuConfig
    hide: true
  - where:
      subject: SettingsSegmentConnector
    hide: true
  # Customize
  # Remove the export cmdlets
  - where:
      subject: (.*)Export$
    remove: true
  - where:
      verb: Export
    remove: true
  # Remove Download cmdlets
  - where:
      subject: SettingsSiemDataStructure
    remove: true
  #Remove Activity cmdlets
  - where:
      subject: (.*)Activity$
    remove: true
  - where:
      subject: (.*)ActivitiesDistinctValue$
    remove: true
  - where:
      subject: (.*)ActivityMap$
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
  # hide environment commands (not useful)
  - where:
        subject: Environments(.*)
    hide: true
  # hide simulate (not useful)
  - where:
      subject: (.*)PoliciesSimulate.*
    hide: true
  - where:
      subject: GroupsSimulateSegmentation.*
    remove: true
  # hide linux scripts (not useful)
  - where:
      subject: ^AssetsLinuxScript$|^AssetsLinuxScriptAvailable$
    hide: true
  # hide K8s cmdlets (not useful)
  - where:
      subject: ^K8sClusterLabelNode$|^K8sClusterWorkloadApplication$|^K8sClusterWorkloadLabel$|^K8sWorkloadApplication$
    hide: true
  # Hide profile cmdlets
  - where:
      subject: ^ProfileEnvironment$|^Profile$
    hide: true
  # Hide Not useful for OT assets
  - where:
      subject: ^AssetOtAnalysis$|^AssetOtIdentityRule$|^AssetOtIdentityRulesAssetsCandidate$|^AssetOtIdentityRulesExcludedAssetsCandidate$|^AssetOtIdentityRulesUserCandidate$|^AssetOtInboundRule$|^AssetOtInboundRulesDestinationCandidate$|^AssetOtInboundRulesExcludedDestinationCandidate$|^AssetOtInboundRulesSourceCandidate$|^AssetOtmfaIdentityPoliciesDestinationCandidate$|^AssetOtmfaIdentityPoliciesExcludedSourceCandidate$|^AssetOtmfaIdentityPoliciesMfamethod$|^AssetOtmfaIdentityPoliciesSourceCandidate$|^AssetOtmfaIdentityPoliciesSourceUserCandidate$|^AssetOtmfaIdentityPolicy$|^AssetOtmfaInboundPoliciesDestinationCandidate$|^AssetOtmfaInboundPoliciesExcludedSourceCandidate$|^AssetOtmfaInboundPoliciesMfamethod$|^AssetOtmfaInboundPoliciesSourceCandidate$|^AssetOtmfaInboundPoliciesSourceUserCandidate$|^AssetOtmfaInboundPolicy$|^AssetOtOutboundRule$|^AssetOtmfaOutboundPoliciesDestinationCandidate$|^AssetOtmfaOutboundPoliciesExcludedSourceCandidate$|^AssetOtmfaOutboundPoliciesMfamethod$|^AssetOtmfaOutboundPoliciesSourceCandidate$|^AssetOtmfaOutboundPoliciesSourceUserCandidate$|^AssetOtmfaOutboundPolicy$|^AssetOtOutboundRulesDestinationCandidate$|^AssetOtOutboundRulesExcludedSourceCandidate$|^AssetOtOutboundRulesSourceCandidate$|^AssetOtOutboundRulesUserCandidate$|^AssetOtrpcRule$|^AssetOtrpcRulesDestinationCandidate$|^AssetOtrpcRulesExcludedDestinationCandidate$|^AssetOtrpcRulesSourceCandidate$|^AssetOtrpcRulesUserCandidate$|^AssetOtRulesDistribution$
    hide: true
  # Hide notifications cmdlets
  - where:
      subject: ^SettingsNotification$
    remove: true
  # Remove APIs that require Human access
  - where:
      subject: (.*)Token
    remove: true
  - where:
      subject: SettingsCustomUser
    remove: true
  # Rename Queue Commands
  - where:
      subject: ^QueueAssetsNetwork$|^QueueAssetNetwork$
    set:
      subject: AssetNetworkQueue
  - where:
      subject: ^QueueAssetsExtendNetwork$|^QueueAssetExtendNetwork$
    set:
      subject: AssetNetworkExtendQueue
  - where:
      subject: ^QueueAssetOtNetwork$|^QueueAssetsOtNetwork$
    set:
      subject: AssetOtNetworkQueue
  - where:
      subject:  ^QueueAssetOtExtendNetwork$|^QueueAssetsOtExtendNetwork$
    set:
      subject: AssetOtNetworkExtendQueue
  - where:
      subject: QueueUsersIdentity
    set:
      subject: UserIdentityQueue
  - where:
      subject: ^QueueAssetIdentity$|^QueueAssetsIdentity$
    set:
      subject: AssetIdentityQueue
  - where:
      subject: ^QueueAssetExtendIdentity$|^QueueAssetsExtendIdentity$
    set:
      subject: AssetIdentityExtendQueue
  - where:
      subject: QueueAssetsRpc
    set:
      subject: AssetRpcQueue
  - where:
      subject: QueueAssetsExtendRpc
    set:
      subject: AssetRpcExtendQueue
  # rename asset/ot/user queue/protect/unprotect commands
  - where:
      subject: AssetsOtNetworkSegment
      variant: ^Protect$|^Unprotect$
    remove: true
  - where:
      subject: AssetsOtNetworkSegment
      verb: ^Protect$|^Unprotect$
    set:
      subject: AssetOtNetworkSegment
  - where:
      subject: AssetsNetworkSegment
      variant: ^Protect$|^Unprotect$
    remove: true
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
      subject: UsersIdentitySegment
      variant: ^Protect$|^Unprotect$
    remove: true
  - where:
      subject: UsersIdentitySegment
      verb: ^Protect$|^Unprotect$
    set:
      subject: UserIdentitySegment
  - where:
      subject: AssetsIdentitySegment
      variant: ^Protect$|^Unprotect$
    remove: true
  - where:
      subject: AssetsIdentitySegment
      verb: ^Protect$|^Unprotect$
    set:
      subject: AssetIdentitySegment
  - where:
      subject: ^AssetsRpcSegment$|^AssetRpcSegment$
      variant: ^Protect$|^Unprotect$
    remove: true
  - where:
      subject: AssetsRpcSegment
      verb: ^Protect$|^Unprotect$
    set:
      subject: AssetRpcSegment
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
  - where:
      subject: AssetsQuarantine
      verb: Enable
    set:
      subject: AssetQuarantine
  - where:
      subject: UsersQuarantine
      verb: Enable
    set:
      subject: UserQuarantine
  - where:
      subject: AssetsOSType
    set:
      subject: AssetOSType
  - where:
      subject: AssetsOutboundRestriction
    set:
      subject: AssetOutboundRestriction
  - where:
      subject: AssetsOutboundRestriction
    set:
      subject: AssetOutboundRestriction
  - where:
      subject: AssetsMirror
    set:
      subject: AssetMirror
  # combine assets/asset
  - where:
      subject: AssetPreferredSegmentServer
    hide: true
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
      subject: ^AssetActive$|^AssetsActive$|^AssetInactive$|^AssetsInactive$|^AssetOtActive$|^AssetsOtActive$|^AssetOtInactive$|^AssetsOtInactive$
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
  - where:
      subject: AssetsOtInactive
      variant: SetExpanded
    set:
      subject: AssetOtInactive
  - where:
      subject: AssetsOtActive
      variant: SetExpanded
    set:
      subject: AssetOtActive
  #Combine Update Asset
  - where:
      subject: AssetsUpdate
      variant: UpdateExpanded
    set:
      subject: AssetUpdate
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
  - where:
      subject: SwitchesNetworkBreakGlass
      verb: Initialize
    set:
      subject: SwitchNetworkBreakGlass
  - where:
      subject: SwitchesMonitoringBreakGlass
      verb: Initialize
    set:
      subject: SwitchMonitoringBreakGlass
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
  - where:
      parameter-name: Offset
    set:
      default:
        name: Offset Default
        description: Sets the offset parameter to 0
        script: '0'
  - where:
      parameter-name: AccountName
    set:
      default:
        name: AccountName Default
        description: Set the acccount name paramater to an environment variable
        script: '(Read-ZNJWTtoken $env:ZNApiKey).aud.split(".")[0]'
  # set the default directions for cmdlets
  - where:
      subject: ^AssetInboundRule$|^AssetOtOutboundRule$|^GroupsInboundRule$|^AssetOtInboundOtRule$|^GroupsInboundOtRule$|^InboundOtRule$
      parameter-name: Direction
    set:
      default:
        name: Direction Default
        description: Sets the direction parameter to 1
        script: '1'
  - where:
      subject: ^AssetOutboundRule$|^AssetOtInboundRule$|^GroupsOutboundRule$|^AssetOtOutboundOtRule$|^GroupsOutboundOtRule$|^OutboundOtRule$
      parameter-name: Direction
    set:
      default:
        name: Direction Default
        description: Sets the direction parameter to 2
        script: '2'
  # set default Direction for Analysis Commands
  - where:
      subject: (.*)Analysis
      parameter-name: Direction
    set:
      default:
        name: Direction Default
        description: Sets the direction parameter to 1
        script: '1'
  #set default for directlyretrievedfromasset
  - where:
      subject: ^AssetNetworkAnalysis$|^GroupsNetworkAnalysis$
      parameter-name: DirectlyRetrievedFromAsset
    set:
      default:
        name: DirectlyRetrievedFromAsset Default
        description: Sets the default to True
        script: '$true'
  - where:
      subject: AssetOtNetworkAnalysis
      parameter-name: DirectlyRetrievedFromAsset
    set:
      default:
        name: DirectlyRetrievedFromAsset Default
        description: Sets the default to True
        script: '$false'
  # Set Default TrafficType for Network Analysis commands
  - where:
      subject: (.*)NetworkAnalysis
      parameter-name: TrafficType
    set:
      default:
        name: TrafficType Default
        description: Sets the TrafficType to Both
        script: '3'
  # Set default ConnectionState for  Network Analysis
  - where:
      subject: (.*)NetworkAnalysis
      parameter-name:  ConnectionState
    set:
      default:
        name: ConnectionState Default
        description: Sets the ConnectionState to Established
        script: '3'
# Set Default EventType for Identity Analysus commands
  - where:
      subject: (.*)IdentityAnalysis
      parameter-name: EventType
    set:
      default:
        name: EventType Default
        description: Sets the EventType to Success
        script: '0'
  # set the default RuleType for AE Exclusions
  - where:
      subject: AeExclusionsInbound(.*)
      parameter-name: RuleType
    set:
      default:
        name: RuleType Default
        description: Sets the rule type parameter to 1
        script: '1'
  - where:
      subject: AeExclusionsOutbound(.*)
      parameter-name: RuleType
    set:
      default:
        name: RuleType Default
        description: Sets the rule type parameter to 2
        script: '2'
  # set AddAncestors parameter default
  - where:
      parameter-name: AddAncestors
    set:
      default:
        name: AddAncestors Default
        description: Sets the AddAncestors parameter to $true
        script: '$true'
  # set withCount default
  - where:
      parameter-name: WithCount
    set:
      default:
        name: WithCount Default
        description: Sets the WithCount parmaeter to true.
        script: '$true'
  #Set default policy type for onboarding policies
  - where:
      subject: IdentityOnboardingPolicy
      verb: Update
      parameter-name: PolicyType
    set:
      default:
        name: PolicyType Default
        description: Sets the PolicyType parmaeter to 2.
        script: '2'
  - where:
      subject: NetworkOnboardingPolicy
      verb: Update
      parameter-name: PolicyType
    set:
      default:
        name: PolicyType Default
        description: Sets the PolicyType parmaeter to 1.
        script: '1'
  #set default state for AE Exclusions
  - where:
      verb: New
      subject: ^AeExclusionsInbound$|^AeExclusionsOutbound$
      parameter-name: state
    set:
      default:
        name: State Default
        description: Sets the State parmaeter to 7.
        script: '7'
  - where:
      verb: New
      subject: ^AeExclusionsInbound$|^AeExclusionsOutbound$
      parameter-name: action
    set:
      default:
        name: Action Default
        description: Sets the Action parmaeter to 1.
        script: '1'
  # combine User Inactive
  - where:
      subject: UsersActive
    set:
      subject: UserActive
  - where:
      subject: UsersInactive
      verb: Update
    set:
      subject: UserInactive
  # Hide
  - where:
      verb: Get
      subject: AssetPreferredSegmentServer
      variant: Get
    hide: true
  - where:
      subject: SimulateSegmentation
    remove: true
  - where:
      subject: SettingsLicense
      verb: Update
    remove: true
  # Hide for Custom Wrappers
  - where:
      verb: Update
      subject: ^AeExclusionsInbound$|^AeExclusionsOutbound$|^AssetExternalAccessPolicy$|^AssetIdentityRule$|^AssetInboundRule$|^AssetInboundOtRule$|^AssetMfaIdentityPolicy$|^AssetMFAInboundPolicy$|^AssetMFAOutboundPolicy$|^AssetOtInboundOtrule$|^AssetOtOutboundOtrule$|^AssetOutboundRule$|^AssetOutboundOtRule$|^AssetOtMFAOutboundPolicy$|^AssetRpcRule$|^CustomGroup$|^ExternalAccessPolicy$|^GroupsExternalAccessPolicy$|^GroupsIdentityRule$|^GroupsInboundRule$|^GroupsInboundOtRule$|^GroupsMfaIdentityPolicy$|^GroupsMFAInboundPolicy$|^GroupsMFAOutboundPolicy$|^GroupsOutboundRule$|^GroupsOutboundOtRule$|^GroupsRpcRule$|^IdentityRule$|^InboundRule$|^InboundOtRule$|^MfaIdentityPolicy$|^MFAInboundPolicy$|^MFAOutboundPolicy$|^OutboundRule$|^OutboundOtRule$|^RpcRule$|^SettingsPushNotification$|^SwitchInboundOtRule$|^SwitchOutboundOtRule$|^UserExternalAccessPolicy$|^UserIdentityRule$|^UserMfaIdentityPolicy$|^UserMfaInboundPolicy$|^UserMfaOutboundPolicy$|^UserOutboundRule$
    hide: true
  - where:
      subject: ^AuthLogin$|^AuthChallenge$
    hide: true
  - where:
      subject: (.*)RuleReview$|(.*)RulesReview$
    hide: true
  - where:
      subject: DownloadSegmentConnector
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
      model-name: SwitchRule
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
      model-name: AeExclusion
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
  - where:
      model-name: CandidatesList
    set:
      format-table:
        properties:
          - Id
          - Name
          - Domain
  - where:
      model-name: GroupCandidate
    set:
      format-table:
        properties:
          - Id
          - Name
          - Domain
```

<!-- region Generated -->
# ZN.Segment
This directory contains the PowerShell module for the Segment service.

---
## Status
[![ZN.Segment](https://img.shields.io/powershellgallery/v/ZN.Segment.svg?style=flat-square&label=ZN.Segment "ZN.Segment")](https://www.powershellgallery.com/packages/ZN.Segment/)

## Info
- Modifiable: yes
- Generated: all
- Committed: yes
- Packaged: yes

---
## Detail
This module was primarily generated via [AutoRest](https://github.com/Azure/autorest) using the [PowerShell](https://github.com/Azure/autorest.powershell) extension.

## Development
For information on how to develop for `ZN.Segment`, see [how-to.md](how-to.md).
<!-- endregion -->

### AutoRest Configuration
> see https://aka.ms/autorest

``` yaml
require:
  - $(this-folder)/../readme.noprofile.md

input-file:
  - $(this-folder)/../openapi.yaml

module-version: 0.0.4
title: Segment
subject-prefix: Segment
  
inlining-threshold: 50

directive:
  # Fixes/overrides to swaggers
  # None
  # Following is two common directive which are normally required
  # 1. Remove the unexpanded parameter set
  # 2. For New-* cmdlets, ViaIdentity is not required, so CreateViaIdentityExpanded is removed as well
  - where:
      variant: ^Create$|^CreateViaIdentity$|^CreateViaIdentityExpanded$|^Update$|^UpdateViaIdentity$
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
  # hide ViaIdentity
  - where:
      variant: (.*)ViaIdentity(.*)
    hide: true
```

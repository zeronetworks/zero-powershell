---
Module Name: ZeroNetworks
Module Guid: e1524bd8-23dd-43fa-bcc0-196b3c1ef81c
Download Help Link: https://github.com/zeronetworkszeronetworks
Help Version: 1.0.0.0
Locale: en-US
---

# ZeroNetworks Module
## Description
Zero Networks PowerShell cmdlets

## ZeroNetworks Cmdlets
### [Add-ZNAssetsAssetManager](Add-ZNAssetsAssetManager.md)
Add an asset manager of asset

### [Add-ZNCustomGroupsMember](Add-ZNCustomGroupsMember.md)
Returns an empty object.

### [Add-ZNGroupsAssetManager](Add-ZNGroupsAssetManager.md)
Add an asset manager of a group

### [Add-ZNGroupsManagedAsset](Add-ZNGroupsManagedAsset.md)
Add a managed assets for group

### [Add-ZNUsersManagedAsset](Add-ZNUsersManagedAsset.md)
Add a managed assets for user

### [Approve-ZNAssetsInboundAllowRuleReview](Approve-ZNAssetsInboundAllowRuleReview.md)
Approve a "pending review" rule with or without changes

### [Approve-ZNAssetsInboundBlockRuleReview](Approve-ZNAssetsInboundBlockRuleReview.md)
Approve a "pending review" rule with or without changes

### [Approve-ZNAssetsOutboundAllowRuleReview](Approve-ZNAssetsOutboundAllowRuleReview.md)
Approve a "pending review" rule with or without changes

### [Approve-ZNAssetsOutboundBlockRuleReview](Approve-ZNAssetsOutboundBlockRuleReview.md)
Approve a "pending review" rule with or without changes

### [Approve-ZNInboundAllowRuleReview](Approve-ZNInboundAllowRuleReview.md)
Approve a "pending review" rule with or without changes

### [Approve-ZNInboundBlockRuleReview](Approve-ZNInboundBlockRuleReview.md)
Approve a "pending review" rule with or without changes

### [Approve-ZNOutboundAllowRuleReview](Approve-ZNOutboundAllowRuleReview.md)
Approve a "pending review" rule with or without changes

### [Approve-ZNOutboundBlockRuleReview](Approve-ZNOutboundBlockRuleReview.md)
Approve a "pending review" rule with or without changes

### [Connect-ZN](Connect-ZN.md)
Login to Zero Networks to get a token for cmdlet use.
NOTE: If your environment has a IdP set for default authentication, you cannot use this cmdlet and will need to use Set-ZNApiKey cmdlet using an API token.

#.Link
https://github.com/zeronetworks/zero-powershell/connect-zn

### [Deny-ZNAssetsInboundAllowRuleReview](Deny-ZNAssetsInboundAllowRuleReview.md)
Reject a "pending review" rule

### [Deny-ZNAssetsInboundBlockRuleReview](Deny-ZNAssetsInboundBlockRuleReview.md)
Reject a "pending review" rule

### [Deny-ZNAssetsOutboundAllowRuleReview](Deny-ZNAssetsOutboundAllowRuleReview.md)
Reject a "pending review" rule

### [Deny-ZNAssetsOutboundBlockRuleReview](Deny-ZNAssetsOutboundBlockRuleReview.md)
Reject a "pending review" rule

### [Deny-ZNInboundAllowRuleReview](Deny-ZNInboundAllowRuleReview.md)
Reject a "pending review" rule

### [Deny-ZNInboundBlockRuleReview](Deny-ZNInboundBlockRuleReview.md)
Reject a "pending review" rule

### [Deny-ZNOutboundAllowRuleReview](Deny-ZNOutboundAllowRuleReview.md)
Reject a "pending review" rule

### [Deny-ZNOutboundBlockRuleReview](Deny-ZNOutboundBlockRuleReview.md)
Reject a "pending review" rule

### [Disconnect-ZN](Disconnect-ZN.md)
Logout of Zero Networks

#.Link
https://github.com/zeronetworks/zero-powershell/Disconnect-zn

### [Get-ZNAadSetting](Get-ZNAadSetting.md)
Get Azure AD Settings

### [Get-ZNActivitiesSetting](Get-ZNActivitiesSetting.md)
Get Activities settings in Data Collection

### [Get-ZNAdGroup](Get-ZNAdGroup.md)
Returns a list of AD groups.

### [Get-ZNAdSetting](Get-ZNAdSetting.md)
Get the AD settings in Asset Managment

### [Get-ZNAdSettingsAutomationGroupsMonitoredCandidate](Get-ZNAdSettingsAutomationGroupsMonitoredCandidate.md)
Get AD Candidates for monitoring in Asset Management

### [Get-ZNAdSettingsAutomationGroupsProtectedCandidate](Get-ZNAdSettingsAutomationGroupsProtectedCandidate.md)
Get AD Candidates for protection in Asset Management

### [Get-ZNAiExclusionNetworkBoth](Get-ZNAiExclusionNetworkBoth.md)
Get AI network exclusion for clients and servers: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

### [Get-ZNAiExclusionNetworkClient](Get-ZNAiExclusionNetworkClient.md)
Get AI network exclusion for clients: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

### [Get-ZNAiExclusionNetworkServer](Get-ZNAiExclusionNetworkServer.md)
Get AI network exclusion for servers: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

### [Get-ZNAiExclusionSourceEntity](Get-ZNAiExclusionSourceEntity.md)
Get AI source entities to ignore during learning.

### [Get-ZNAiGroup](Get-ZNAiGroup.md)
Returns a list of Ai Groups.

### [Get-ZNAiNextBatch](Get-ZNAiNextBatch.md)
Returns a date in epoch(ms) for the next batch of AI rules.

### [Get-ZNAnsibleSetting](Get-ZNAnsibleSetting.md)
Get the Ansible settings in Asset Managment

### [Get-ZNAsset](Get-ZNAsset.md)
Returns the properties of an asset.

### [Get-ZNAssetAnalysis](Get-ZNAssetAnalysis.md)
Returns an object with asset analysis data.

### [Get-ZNAssetMemberOf](Get-ZNAssetMemberOf.md)
Returns a list of groups the asset is a member of.

### [Get-ZNAssetsAssetManager](Get-ZNAssetsAssetManager.md)
Get asset managers of asset

### [Get-ZNAssetsAssetManagersCandidate](Get-ZNAssetsAssetManagersCandidate.md)
Get manager candidates for asset managers

### [Get-ZNAssetsAudit](Get-ZNAssetsAudit.md)
Returns a list of audits for the asset.

### [Get-ZNAssetsInboundAllowRule](Get-ZNAssetsInboundAllowRule.md)
Returns the properties of an Inbound Allow rule.

### [Get-ZNAssetsInboundAllowRulesDestinationCandidate](Get-ZNAssetsInboundAllowRulesDestinationCandidate.md)
Returns a list of destionation candidates for Inbound Allow rules.

### [Get-ZNAssetsInboundAllowRulesExcludedDestinationCandidate](Get-ZNAssetsInboundAllowRulesExcludedDestinationCandidate.md)
Returns a list of excluded destionation candidates for Inbound Allow rules.

### [Get-ZNAssetsInboundAllowRulesSourceCandidate](Get-ZNAssetsInboundAllowRulesSourceCandidate.md)
Returns a list of source candidates for Inbound Allow rules.

### [Get-ZNAssetsInboundBlockRule](Get-ZNAssetsInboundBlockRule.md)
Returns the properties of the Inbound Block rule.

### [Get-ZNAssetsInboundBlockRulesDestinationCandidate](Get-ZNAssetsInboundBlockRulesDestinationCandidate.md)
Returns a list of destination candidates for Inbound Block rules.

### [Get-ZNAssetsInboundBlockRulesExcludedLocalCandidate](Get-ZNAssetsInboundBlockRulesExcludedLocalCandidate.md)
Returns a list of excluded destination candidates for Inbound Block rules.

### [Get-ZNAssetsInboundBlockRulesSourceCandidate](Get-ZNAssetsInboundBlockRulesSourceCandidate.md)
Returns a list of source candidates for Inbound Block rules.

### [Get-ZNAssetsMfaInboundPoliciesDestinationCandidate](Get-ZNAssetsMfaInboundPoliciesDestinationCandidate.md)
Returns a list of candidates for the destionation of an inbound MFA policy.

### [Get-ZNAssetsMfaInboundPoliciesMfamethod](Get-ZNAssetsMfaInboundPoliciesMfamethod.md)
Returns a list of MFA methods for inbound MFA policies.

### [Get-ZNAssetsMfaInboundPoliciesSourceCandidate](Get-ZNAssetsMfaInboundPoliciesSourceCandidate.md)
Returns a list of source candidates on inbound MFA policies.

### [Get-ZNAssetsMfaInboundPoliciesSourceUserCandidate](Get-ZNAssetsMfaInboundPoliciesSourceUserCandidate.md)
Returns a list of source user candidates for inbound MFA policies.

### [Get-ZNAssetsMfaInboundPolicy](Get-ZNAssetsMfaInboundPolicy.md)
Returns a inbound MFA policy object.

### [Get-ZNAssetsMfaOutboundPoliciesDestinationCandidate](Get-ZNAssetsMfaOutboundPoliciesDestinationCandidate.md)
Returns a list of destination candidates on outbound MFA policies.

### [Get-ZNAssetsMfaOutboundPoliciesMfamethod](Get-ZNAssetsMfaOutboundPoliciesMfamethod.md)
Returns a list of MFA methods on outbound MFA policies.

### [Get-ZNAssetsMfaOutboundPoliciesSourceCandidate](Get-ZNAssetsMfaOutboundPoliciesSourceCandidate.md)
Returns a list of source candidates on outbound MFA policies.

### [Get-ZNAssetsMfaOutboundPoliciesSourceUserCandidate](Get-ZNAssetsMfaOutboundPoliciesSourceUserCandidate.md)
Returns a list of source users candidates on outbound MFA policies.

### [Get-ZNAssetsMfaOutboundPolicy](Get-ZNAssetsMfaOutboundPolicy.md)
Returns the properties of an outbound MFA policy.

### [Get-ZNAssetsMonitored](Get-ZNAssetsMonitored.md)
Returns a list of assets that are monitored.

### [Get-ZNAssetsOt](Get-ZNAssetsOt.md)
Returns a list of OT/IoT assets.

### [Get-ZNAssetsOutboundAllowRule](Get-ZNAssetsOutboundAllowRule.md)
Returns the properties of an Outbound Allow rule.

### [Get-ZNAssetsOutboundAllowRulesDestinationCandidate](Get-ZNAssetsOutboundAllowRulesDestinationCandidate.md)
Returns a list of destination candidates for Outbound Allow rules.

### [Get-ZNAssetsOutboundAllowRulesExcludedSourceCandidate](Get-ZNAssetsOutboundAllowRulesExcludedSourceCandidate.md)
Returns a list of excluded source candidates for Outbound Allow rules.

### [Get-ZNAssetsOutboundAllowRulesSourceCandidate](Get-ZNAssetsOutboundAllowRulesSourceCandidate.md)
Returns a list of source candidates for Outbound Allow rules.

### [Get-ZNAssetsOutboundBlockRule](Get-ZNAssetsOutboundBlockRule.md)
Returns the properties of an outbound block rule.

### [Get-ZNAssetsOutboundBlockRulesDestinationCandidate](Get-ZNAssetsOutboundBlockRulesDestinationCandidate.md)
Returns a list of destioantion candidates for outbound block rules.

### [Get-ZNAssetsOutboundBlockRulesExcludedSourceCandidate](Get-ZNAssetsOutboundBlockRulesExcludedSourceCandidate.md)
Returns a list of excluded source candidates for outbound block rules.

### [Get-ZNAssetsOutboundBlockRulesSourceCandidate](Get-ZNAssetsOutboundBlockRulesSourceCandidate.md)
Returns a list of source candidates for outbound block rules.

### [Get-ZNAssetsProtected](Get-ZNAssetsProtected.md)
Returns a list of Protected assets.

### [Get-ZNAssetsQueued](Get-ZNAssetsQueued.md)
Returns a list of assets in Learning.

### [Get-ZNAssetsStatesStatistics](Get-ZNAssetsStatesStatistics.md)
Returns an object with asset state statistics.

### [Get-ZNAssetsStatistics](Get-ZNAssetsStatistics.md)
Returns an object with asset statistics.

### [Get-ZNAssetTag](Get-ZNAssetTag.md)
Returns a list of tags for an entity.

### [Get-ZNAudit](Get-ZNAudit.md)
Returns a list of audit events.

### [Get-ZNCustomGroup](Get-ZNCustomGroup.md)
Returns a list of Custom groups.

### [Get-ZNCustomGroupsCandidate](Get-ZNCustomGroupsCandidate.md)
Returns a list of candidates for custom group membership.

### [Get-ZNDefaultApplicationSetting](Get-ZNDefaultApplicationSetting.md)
Get Default SSO Application settings in Identity Providers

### [Get-ZNFirewallSetting](Get-ZNFirewallSetting.md)
Returns the properties of Firewall settings.

### [Get-ZNGroup](Get-ZNGroup.md)
Returns the properties of an group.

### [Get-ZNGroupAudit](Get-ZNGroupAudit.md)
Returns a list of audits for the group.

### [Get-ZNGroupMemberOf](Get-ZNGroupMemberOf.md)
Returns a list of groups the group is a member of.

### [Get-ZNGroupsAssetManager](Get-ZNGroupsAssetManager.md)
Get asset managers of group

### [Get-ZNGroupsAssetManagersCandidate](Get-ZNGroupsAssetManagersCandidate.md)
Get manager candidates for group managers

### [Get-ZNGroupsManagedAsset](Get-ZNGroupsManagedAsset.md)
Get managed assets for group

### [Get-ZNGroupsManagedAssetsCandidate](Get-ZNGroupsManagedAssetsCandidate.md)
Get asset candidates to be managed by group

### [Get-ZNGroupsMember](Get-ZNGroupsMember.md)
Returns a list of potential members for a group.

### [Get-ZNGroupsStatistics](Get-ZNGroupsStatistics.md)
Returns an object with group statistics.

### [Get-ZNIdpSetting](Get-ZNIdpSetting.md)
Get identity provider settings in Identity Providers

### [Get-ZNInboundAllowRule](Get-ZNInboundAllowRule.md)
Returns the properties of an Inbound Allow rule.

### [Get-ZNInboundAllowRulesDestinationCandidate](Get-ZNInboundAllowRulesDestinationCandidate.md)
Returns a list of destionation candidates for Inbound Allow rules.

### [Get-ZNInboundAllowRulesExcludedDestinationCandidate](Get-ZNInboundAllowRulesExcludedDestinationCandidate.md)
Returns a list of excluded destionation candidates for Inbound Allow rules.

### [Get-ZNInboundAllowRulesSourceCandidate](Get-ZNInboundAllowRulesSourceCandidate.md)
Returns a list of source candidates for Inbound Allow rules.

### [Get-ZNInboundBlockRule](Get-ZNInboundBlockRule.md)
Returns the properties of the Inbound Block rule.

### [Get-ZNInboundBlockRulesDestinationCandidate](Get-ZNInboundBlockRulesDestinationCandidate.md)
Returns a list of destination candidates for Inbound Block rules.

### [Get-ZNInboundBlockRulesExcludedLocalCandidate](Get-ZNInboundBlockRulesExcludedLocalCandidate.md)
Returns a list of excluded destination candidates for Inbound Block rules.

### [Get-ZNInboundBlockRulesSourceCandidate](Get-ZNInboundBlockRulesSourceCandidate.md)
Returns a list of source candidates for Inbound Block rules.

### [Get-ZNJamfCredentialsSetting](Get-ZNJamfCredentialsSetting.md)
Returns the properties for JAMF Credentials Settings.

### [Get-ZNLinuxUserSetting](Get-ZNLinuxUserSetting.md)
Get the linux user settings in Asset Managment

### [Get-ZNMfaAuthenticationSetting](Get-ZNMfaAuthenticationSetting.md)
Returns the properties of MFA authentication settings.

### [Get-ZNMfaDetectionSetting](Get-ZNMfaDetectionSetting.md)
Returns the properties of MFA detection settings.

### [Get-ZNMfaInboundPoliciesDestinationCandidate](Get-ZNMfaInboundPoliciesDestinationCandidate.md)
Returns a list of candidates for the destionation of an inbound MFA policy.

### [Get-ZNMfaInboundPoliciesMfamethod](Get-ZNMfaInboundPoliciesMfamethod.md)
Returns a list of MFA methods for inbound MFA policies.

### [Get-ZNMfaInboundPoliciesSimulateDestinationCandidate](Get-ZNMfaInboundPoliciesSimulateDestinationCandidate.md)
Returns a list of destination candidates on inbound MFA simulation.

### [Get-ZNMfaInboundPoliciesSimulateSourceCandidate](Get-ZNMfaInboundPoliciesSimulateSourceCandidate.md)
Returns a list of source candidates on inbound MFA simulation.

### [Get-ZNMfaInboundPoliciesSimulateSourceUserCandidate](Get-ZNMfaInboundPoliciesSimulateSourceUserCandidate.md)
Returns a list of source user candidates on inbound MFA simulation.

### [Get-ZNMfaInboundPoliciesSourceCandidate](Get-ZNMfaInboundPoliciesSourceCandidate.md)
Returns a list of source candidates on inbound MFA policies.

### [Get-ZNMfaInboundPoliciesSourceUserCandidate](Get-ZNMfaInboundPoliciesSourceUserCandidate.md)
Returns a list of source user candidates for inbound MFA policies.

### [Get-ZNMfaInboundPolicy](Get-ZNMfaInboundPolicy.md)
Returns a inbound MFA policy object.

### [Get-ZNMfaOutboundPoliciesDestinationCandidate](Get-ZNMfaOutboundPoliciesDestinationCandidate.md)
Returns a list of destination candidates on outbound MFA policies.

### [Get-ZNMfaOutboundPoliciesMfamethod](Get-ZNMfaOutboundPoliciesMfamethod.md)
Returns a list of MFA methods on outbound MFA policies.

### [Get-ZNMfaOutboundPoliciesSimulateDesinationCandidate](Get-ZNMfaOutboundPoliciesSimulateDesinationCandidate.md)
Returns a list of destination candidates on outbound MFA simulation.

### [Get-ZNMfaOutboundPoliciesSimulateSourceCandidate](Get-ZNMfaOutboundPoliciesSimulateSourceCandidate.md)
Returns a list of source candidates on outbound MFA simulation.

### [Get-ZNMfaOutboundPoliciesSimulateSourceUserCandidate](Get-ZNMfaOutboundPoliciesSimulateSourceUserCandidate.md)
Returns a list of source users candidates on outbound MFA simulation.

### [Get-ZNMfaOutboundPoliciesSourceCandidate](Get-ZNMfaOutboundPoliciesSourceCandidate.md)
Returns a list of source candidates on outbound MFA policies.

### [Get-ZNMfaOutboundPoliciesSourceUserCandidate](Get-ZNMfaOutboundPoliciesSourceUserCandidate.md)
Returns a list of source users candidates on outbound MFA policies.

### [Get-ZNMfaOutboundPolicy](Get-ZNMfaOutboundPolicy.md)
Returns the properties of an outbound MFA policy.

### [Get-ZNMfaPoliciesDistribution](Get-ZNMfaPoliciesDistribution.md)
Returns and object with MFA distrubiton.

### [Get-ZNMfaPoliciesStatistics](Get-ZNMfaPoliciesStatistics.md)
Returns an object with MFA statistics.

### [Get-ZNNotificationSetting](Get-ZNNotificationSetting.md)
Returns the properties of the Mail Notification settings.

### [Get-ZNOutboundAllowRule](Get-ZNOutboundAllowRule.md)
Returns the properties of an Outbound Allow rule.

### [Get-ZNOutboundAllowRulesDestinationCandidate](Get-ZNOutboundAllowRulesDestinationCandidate.md)
Returns a list of destination candidates for Outbound Allow rules.

### [Get-ZNOutboundAllowRulesExcludedSourceCandidate](Get-ZNOutboundAllowRulesExcludedSourceCandidate.md)
Returns a list of excluded source candidates for Outbound Allow rules.

### [Get-ZNOutboundAllowRulesSourceCandidate](Get-ZNOutboundAllowRulesSourceCandidate.md)
Returns a list of source candidates for Outbound Allow rules.

### [Get-ZNOutboundBlockRule](Get-ZNOutboundBlockRule.md)
Returns the properties of an outbound block rule.

### [Get-ZNOutboundBlockRulesDestinationCandidate](Get-ZNOutboundBlockRulesDestinationCandidate.md)
Returns a list of destioantion candidates for outbound block rules.

### [Get-ZNOutboundBlockRulesExcludedSourceCandidate](Get-ZNOutboundBlockRulesExcludedSourceCandidate.md)
Returns a list of excluded source candidates for outbound block rules.

### [Get-ZNOutboundBlockRulesSourceCandidate](Get-ZNOutboundBlockRulesSourceCandidate.md)
Returns a list of source candidates for outbound block rules.

### [Get-ZNProfile](Get-ZNProfile.md)
Get user profile

### [Get-ZNProtectionPoliciesGroupCandidate](Get-ZNProtectionPoliciesGroupCandidate.md)
Returns a list of candidates for protection policies.

### [Get-ZNProtectionPolicy](Get-ZNProtectionPolicy.md)
Returns a list of protection policies.

### [Get-ZNRulesDistribution](Get-ZNRulesDistribution.md)
Returns an object with rules distribution.

### [Get-ZNRulesStatistics](Get-ZNRulesStatistics.md)
Returns an object with rule statistics.

### [Get-ZNSession](Get-ZNSession.md)
Returns a list of Connect sessions.

### [Get-ZNSettingsAiRuleReview](Get-ZNSettingsAiRuleReview.md)
Get AI rules review settings

### [Get-ZNSettingsAssetManager](Get-ZNSettingsAssetManager.md)
List asset managers

### [Get-ZNSettingsAuth](Get-ZNSettingsAuth.md)
Get the portal security settings

### [Get-ZNSettingsConnectRegion](Get-ZNSettingsConnectRegion.md)
List Connect Regions in Settings

### [Get-ZNSettingsConnectServer](Get-ZNSettingsConnectServer.md)
List Connect Servers in Settings

### [Get-ZNSettingsConnectUserAccessConfig](Get-ZNSettingsConnectUserAccessConfig.md)
List Connect User Access Configurations in Settings

### [Get-ZNSettingsConnectUserAccessConfigCandidate](Get-ZNSettingsConnectUserAccessConfigCandidate.md)
Returns a list of candidates for Connect User Access Config settings.

### [Get-ZNSettingsConnectUserAccessConfigDestinationsCandidate](Get-ZNSettingsConnectUserAccessConfigDestinationsCandidate.md)
Returns a list of destinations candidates for Connect User Access Config settings.

### [Get-ZNSettingsConnectUserAccessConfigExcludedCandidate](Get-ZNSettingsConnectUserAccessConfigExcludedCandidate.md)
Returns a list of excluded candidates for Connect User Access Config settings.

### [Get-ZNSettingsInternalSubnet](Get-ZNSettingsInternalSubnet.md)
Get Internal Subnets settings in System

### [Get-ZNSystemGroup](Get-ZNSystemGroup.md)
Returns a list of System groups.

### [Get-ZNTagGroup](Get-ZNTagGroup.md)
Returns a list of Tags.

### [Get-ZNTrustServer](Get-ZNTrustServer.md)
Returns a list of trust servers.

### [Get-ZNUser](Get-ZNUser.md)
Returns the properties of an user.

### [Get-ZNUserAudit](Get-ZNUserAudit.md)
Returns a list of audits for the user.

### [Get-ZNUserMemberOf](Get-ZNUserMemberOf.md)
Returns a list of groups the user is a member of.

### [Get-ZNUsersManagedAsset](Get-ZNUsersManagedAsset.md)
get managed assets for user

### [Get-ZNUsersManagedAssetsCandidate](Get-ZNUsersManagedAssetsCandidate.md)
Get asset candidates to be managed by asset managers

### [Get-ZNUserStatistics](Get-ZNUserStatistics.md)
Get Users statistics

### [Invoke-ZNAssetsExtendQueueAsset](Invoke-ZNAssetsExtendQueueAsset.md)
Extend asset learning

### [Invoke-ZNAssetsQueueAsset](Invoke-ZNAssetsQueueAsset.md)
Extend asset learning

### [Invoke-ZNEncodeEntityIP](Invoke-ZNEncodeEntityIP.md)
Returns the assetId after encoding the IP address.

### [Invoke-ZNEncodeEntityIPRange](Invoke-ZNEncodeEntityIPRange.md)
Returns the assetId after encoding the IP range.

### [Invoke-ZNEncodeEntitySubnet](Invoke-ZNEncodeEntitySubnet.md)
Returns the assetId after encoding the IP subnet.

### [Invoke-ZNExtendAssetQueue](Invoke-ZNExtendAssetQueue.md)
Returns an empty object.

### [Invoke-ZNQueueAsset](Invoke-ZNQueueAsset.md)
Returns and empty object.

### [Invoke-ZNRediscoverAd](Invoke-ZNRediscoverAd.md)
Rediscover monitored assets

### [Invoke-ZNRediscoverLinux](Invoke-ZNRediscoverLinux.md)
Rediscover monitored assets from Ansible

### [New-ZNAdSecondarySetting](New-ZNAdSecondarySetting.md)
Add a secondary AD settings in Asset Managment

### [New-ZNAdSetting](New-ZNAdSetting.md)
Set the AD settings in Asset Managment

### [New-ZNAssetsInboundAllowRule](New-ZNAssetsInboundAllowRule.md)
Returns the properties of the created Inbound Allow rule.

### [New-ZNAssetsInboundBlockRule](New-ZNAssetsInboundBlockRule.md)
Returns the properties of the created Inbound Block rule.

### [New-ZNAssetsLinux](New-ZNAssetsLinux.md)
Returns the assetId of the created Linux asset.

### [New-ZNAssetsMfaInboundPolicy](New-ZNAssetsMfaInboundPolicy.md)
Returns the properties of the inbound MFA policy after creation.

### [New-ZNAssetsMfaOutboundPolicy](New-ZNAssetsMfaOutboundPolicy.md)
Returns a the properties of outbound MFA policy created.

### [New-ZNAssetsOt](New-ZNAssetsOt.md)
Returns an empty object.

### [New-ZNAssetsOutboundAllowRule](New-ZNAssetsOutboundAllowRule.md)
Returns the properties of the created Outbound Allow rule.

### [New-ZNAssetsOutboundBlockRule](New-ZNAssetsOutboundBlockRule.md)
Returns the properties of the created outbound block rule.

### [New-ZNCustomGroup](New-ZNCustomGroup.md)
Returns an empty object.

### [New-ZNIdpSetting](New-ZNIdpSetting.md)
Create an identity provider settings in Identity Providers

### [New-ZNInboundAllowRule](New-ZNInboundAllowRule.md)
Returns the properties of the created Inbound Allow rule.

### [New-ZNInboundBlockRule](New-ZNInboundBlockRule.md)
Returns the properties of the created Inbound Block rule.

### [New-ZNMfaInboundPolicy](New-ZNMfaInboundPolicy.md)
Returns the properties of the inbound MFA policy after creation.

### [New-ZNMfaOutboundPolicy](New-ZNMfaOutboundPolicy.md)
Returns a the properties of outbound MFA policy created.

### [New-ZNOutboundAllowRule](New-ZNOutboundAllowRule.md)
Returns the properties of the created Outbound Allow rule.

### [New-ZNOutboundBlockRule](New-ZNOutboundBlockRule.md)
Returns the properties of the created outbound block rule.

### [New-ZNPortsList](New-ZNPortsList.md)
Create a in-memory object for PortsList

### [New-ZNProtectionPolicy](New-ZNProtectionPolicy.md)
Returns the protection policy that was created.

### [New-ZNSettingsConnectRegion](New-ZNSettingsConnectRegion.md)
Create a Connect region in Settings

### [New-ZNSettingsConnectUserAccessConfig](New-ZNSettingsConnectUserAccessConfig.md)
Create a Connect User Access Configuration in Settings

### [Protect-ZNAsset](Protect-ZNAsset.md)
Returns and empty object.

### [Protect-ZNAssetsOt](Protect-ZNAssetsOt.md)
Returns an empty response.

### [Remove-ZNAdSecondarySetting](Remove-ZNAdSecondarySetting.md)
Returns an empty reponse.

### [Remove-ZNAdSetting](Remove-ZNAdSetting.md)
Remove AD forest settings.

### [Remove-ZNApiKey](Remove-ZNApiKey.md)
Deletes the API Key

#.Link
https://github.com/zeronetworks/zero-powershell/remove-znapikey

### [Remove-ZNAssetsAssetManager](Remove-ZNAssetsAssetManager.md)
Remove an asset manager of asset

### [Remove-ZNAssetsInboundAllowRule](Remove-ZNAssetsInboundAllowRule.md)
Returns an empty object.

### [Remove-ZNAssetsInboundBlockRule](Remove-ZNAssetsInboundBlockRule.md)
Returns an empty object.

### [Remove-ZNAssetsMfaInboundPolicy](Remove-ZNAssetsMfaInboundPolicy.md)
Returns an empty object.

### [Remove-ZNAssetsMfaOutboundPolicy](Remove-ZNAssetsMfaOutboundPolicy.md)
Returns an empty object.

### [Remove-ZNAssetsOutboundAllowRule](Remove-ZNAssetsOutboundAllowRule.md)
Returns an empty object.

### [Remove-ZNAssetsOutboundBlockRule](Remove-ZNAssetsOutboundBlockRule.md)
Returns an empty object.

### [Remove-ZNCustomGroup](Remove-ZNCustomGroup.md)
Returns an empty object.

### [Remove-ZNCustomGroupsMember](Remove-ZNCustomGroupsMember.md)
Returns an empty object.

### [Remove-ZNGroupsAssetManager](Remove-ZNGroupsAssetManager.md)
Remove asset manager of group

### [Remove-ZNGroupsManagedAsset](Remove-ZNGroupsManagedAsset.md)
Remove managed asset of group

### [Remove-ZNIdpSetting](Remove-ZNIdpSetting.md)
Returns an empty reponse.

### [Remove-ZNInboundAllowRule](Remove-ZNInboundAllowRule.md)
Returns an empty object.

### [Remove-ZNInboundBlockRule](Remove-ZNInboundBlockRule.md)
Returns an empty object.

### [Remove-ZNJamfCredentialsSetting](Remove-ZNJamfCredentialsSetting.md)
Returns an empty object.

### [Remove-ZNMfaInboundPolicy](Remove-ZNMfaInboundPolicy.md)
Returns an empty object.

### [Remove-ZNMfaOutboundPolicy](Remove-ZNMfaOutboundPolicy.md)
Returns an empty object.

### [Remove-ZNOutboundAllowRule](Remove-ZNOutboundAllowRule.md)
Returns an empty object.

### [Remove-ZNOutboundBlockRule](Remove-ZNOutboundBlockRule.md)
Returns an empty object.

### [Remove-ZNProtectionPolicy](Remove-ZNProtectionPolicy.md)
Returns and empty object.

### [Remove-ZNSettingsConnectUserAccessConfig](Remove-ZNSettingsConnectUserAccessConfig.md)
Delete a Connect User Access Configuration in Settings

### [Remove-ZNUsersManagedAsset](Remove-ZNUsersManagedAsset.md)
Remove managed asset of user

### [Revoke-ZNSession](Revoke-ZNSession.md)
Revoke a Connect session.

### [Search-ZNAsset](Search-ZNAsset.md)
Returns an assetId.

### [Set-ZNApiKey](Set-ZNApiKey.md)
Set the API key for use in all other cmdlets

#.Link
https://github.com/zeronetworks/zero-powershell/set-znapikey

### [Test-ZNAssetsProtection](Test-ZNAssetsProtection.md)
Returns a number of assets that are valid for protection.

### [Test-ZNAssetsUnprotect](Test-ZNAssetsUnprotect.md)
Returns a number of assets that are valid to unprotect.

### [Test-ZNMfaInboundPoliciesSimulate](Test-ZNMfaInboundPoliciesSimulate.md)
Returns a list of MFA policies that would match the simulaton.

### [Test-ZNMfaOutboundPoliciesSimulate](Test-ZNMfaOutboundPoliciesSimulate.md)
Returns a list of outbound MFA policies that would match the simulation.

### [Unprotect-ZNAsset](Unprotect-ZNAsset.md)
Returns an empty object.

### [Unprotect-ZNAssetsOt](Unprotect-ZNAssetsOt.md)
Returns and empty body.

### [Update-ZNActivitiesSetting](Update-ZNActivitiesSetting.md)
Update the Activities settings in Data Collection

### [Update-ZNAdSecondarySetting](Update-ZNAdSecondarySetting.md)
Update a secondary AD settings in Asset Managment

### [Update-ZNAdSetting](Update-ZNAdSetting.md)
Update AD forest settings.

### [Update-ZNAdSettingsAutomationGroup](Update-ZNAdSettingsAutomationGroup.md)
Update Automation Groups for an AD forest setting.

### [Update-ZNAiExclusionNetworkBoth](Update-ZNAiExclusionNetworkBoth.md)
Set AI network exclusion for clients and servers: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

### [Update-ZNAiExclusionNetworkClient](Update-ZNAiExclusionNetworkClient.md)
Set AI network exclusion for clients: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

### [Update-ZNAiExclusionNetworkServer](Update-ZNAiExclusionNetworkServer.md)
Set AI network exclusion for servers: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

### [Update-ZNAnsibleSetting](Update-ZNAnsibleSetting.md)
Get the Ansible settings in Asset Managment

### [Update-ZNAssetsInboundAllowRule](Update-ZNAssetsInboundAllowRule.md)
Updates an inbound allow rule.

### [Update-ZNAssetsInboundBlockRule](Update-ZNAssetsInboundBlockRule.md)
Updates an inbound block rule.

### [Update-ZNAssetsMfaInboundPolicy](Update-ZNAssetsMfaInboundPolicy.md)
Updates an inbound MFA Policy.

### [Update-ZNAssetsMfaOutboundPolicy](Update-ZNAssetsMfaOutboundPolicy.md)
Updates an outbound MFA Policy.

### [Update-ZNAssetsOt](Update-ZNAssetsOt.md)
Edit an OT/IoT asset.

### [Update-ZNAssetsOutboundAllowRule](Update-ZNAssetsOutboundAllowRule.md)
Updates an outbound allow rule.

### [Update-ZNAssetsOutboundBlockRule](Update-ZNAssetsOutboundBlockRule.md)
Updates an outbound block rule.

### [Update-ZNCustomGroup](Update-ZNCustomGroup.md)
Updates a custom group properties.

### [Update-ZNDefaultApplicationSetting](Update-ZNDefaultApplicationSetting.md)
Update the Default SSO Application settings in Identity Providers

### [Update-ZNFirewallSetting](Update-ZNFirewallSetting.md)
Returns the properties of the updated Firewall settings.

### [Update-ZNIdpSetting](Update-ZNIdpSetting.md)
Update identity provider settings in Identity Providers

### [Update-ZNInboundAllowRule](Update-ZNInboundAllowRule.md)
Updates an inbound allow rule.

### [Update-ZNInboundBlockRule](Update-ZNInboundBlockRule.md)
Updates an inbound block rule.

### [Update-ZNJamfCredentialsSetting](Update-ZNJamfCredentialsSetting.md)
Returns the upddated properties of JAMF Credentials settings.

### [Update-ZNLinuxUserSetting](Update-ZNLinuxUserSetting.md)
Update the linux user settings in Asset Managment

### [Update-ZNMfaAuthenticationSetting](Update-ZNMfaAuthenticationSetting.md)
Returns an empty object.

### [Update-ZNMfaDetectionSetting](Update-ZNMfaDetectionSetting.md)
Returns the properties of the updated MFA detection settings.

### [Update-ZNMfaInboundPolicy](Update-ZNMfaInboundPolicy.md)
Updates an inbound MFA Policy.

### [Update-ZNMfaOutboundPolicy](Update-ZNMfaOutboundPolicy.md)
Updates an outbound MFA Policy.

### [Update-ZNNotificationSetting](Update-ZNNotificationSetting.md)
Returns the properties of the updated Mail Notifications settings.

### [Update-ZNOutboundAllowRule](Update-ZNOutboundAllowRule.md)
Updates an outbound allow rule.

### [Update-ZNOutboundBlockRule](Update-ZNOutboundBlockRule.md)
Updates an outbound block rule.

### [Update-ZNPreferredTrustServer](Update-ZNPreferredTrustServer.md)
Set preferred trust server

### [Update-ZNProtectionPolicy](Update-ZNProtectionPolicy.md)
Returns the updated settings for the protection policy.

### [Update-ZNSettingsAiRuleReview](Update-ZNSettingsAiRuleReview.md)
Update AI rule review settings

### [Update-ZNSettingsAuth](Update-ZNSettingsAuth.md)
Set the portal security settings

### [Update-ZNSettingsConnectUserAccessConfig](Update-ZNSettingsConnectUserAccessConfig.md)
Update a Connect User Access Configuration in Settings

### [Update-ZNSettingsInternalSubnet](Update-ZNSettingsInternalSubnet.md)
Update the Internal Subnets settings in System


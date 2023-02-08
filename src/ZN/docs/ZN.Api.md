---
Module Name: ZN.Api
Module Guid: 74b0e1e1-137d-48db-9b26-a64b09cf7db5
Download Help Link: https://github.com/zn.api
Help Version: 1.0.0.0
Locale: en-US
---

# ZN.Api Module
## Description
Zero Networks PowerShell cmdlets

## ZN.Api Cmdlets
### [Add-ZNCustomGroupsMember](Add-ZNCustomGroupsMember.md)
Returns an empty object.

### [Connect-ZN](Connect-ZN.md)
Login to Zero Networks to get a token for cmdlet use

### [Disconnect-ZN](Disconnect-ZN.md)
Logout of Zero Networks

### [Get-ZNActivitiesSetting](Get-ZNActivitiesSetting.md)
Get Activities settings in Data Collection

### [Get-ZNAdGroup](Get-ZNAdGroup.md)
Returns a list of AD groups.

### [Get-ZNAdSecondarySetting](Get-ZNAdSecondarySetting.md)
List the secondary AD settings in Asset Managment

### [Get-ZNAdSetting](Get-ZNAdSetting.md)
Get the AD settings in Asset Managment

### [Get-ZNAiExclusionNetworkBoth](Get-ZNAiExclusionNetworkBoth.md)
Get AI network exclusion for clients and servers: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

### [Get-ZNAiExclusionNetworkClient](Get-ZNAiExclusionNetworkClient.md)
Get AI network exclusion for clients: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

### [Get-ZNAiExclusionNetworkServer](Get-ZNAiExclusionNetworkServer.md)
Get AI network exclusion for servers: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

### [Get-ZNAiExclusionSrcEntity](Get-ZNAiExclusionSrcEntity.md)
Get AI source entities to ignore during learning.

### [Get-ZNAiNextBatch](Get-ZNAiNextBatch.md)
Returns a date in epoch(ms) for the next batch of AI rules.

### [Get-ZNAnsibleSetting](Get-ZNAnsibleSetting.md)
Get the Ansible settings in Asset Managment

### [Get-ZNAsset](Get-ZNAsset.md)
Returns a list of assets.

### [Get-ZNAssetsMonitored](Get-ZNAssetsMonitored.md)
Returns a list of assets that are monitored.

### [Get-ZNAssetsOt](Get-ZNAssetsOt.md)
Returns a list of OT/IoT assets.

### [Get-ZNAssetsProtected](Get-ZNAssetsProtected.md)
Returns a list of Protected assets.

### [Get-ZNAssetsQueued](Get-ZNAssetsQueued.md)
Returns a list of assets in Learning.

### [Get-ZNAssetsStatesStatistics](Get-ZNAssetsStatesStatistics.md)
Returns an object with asset state statistics.

### [Get-ZNAssetsStatistics](Get-ZNAssetsStatistics.md)
Returns an object with asset statistics.

### [Get-ZNAudit](Get-ZNAudit.md)
Returns a list of audit events.

### [Get-ZNCustomGroup](Get-ZNCustomGroup.md)
Returns a list of Custom groups.

### [Get-ZNDefaultApplicationSetting](Get-ZNDefaultApplicationSetting.md)
Get Default SSO Application settings in Identity Providers

### [Get-ZNEntity](Get-ZNEntity.md)
Get an entity

### [Get-ZNEntityAnalysis](Get-ZNEntityAnalysis.md)
Returns an object with entity analysis data.

### [Get-ZNEntityMemberOf](Get-ZNEntityMemberOf.md)
Returns a list of groups the group is a member of.

### [Get-ZNEntityTag](Get-ZNEntityTag.md)
Returns a list of tags for an entity.

### [Get-ZNEnvironment](Get-ZNEnvironment.md)
List the Zero Networks environments

### [Get-ZNFirewallSetting](Get-ZNFirewallSetting.md)
Returns the properties of Firewall settings.

### [Get-ZNGroup](Get-ZNGroup.md)
Returns a list of groups.

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

### [Get-ZNMonitoredGroupCandidatesSetting](Get-ZNMonitoredGroupCandidatesSetting.md)
Get the monitored group candidates

### [Get-ZNMonitoredGroupSetting](Get-ZNMonitoredGroupSetting.md)
Get the monitored group settings in Asset Managment

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

### [Get-ZNProtectionAutomationCandidatesSetting](Get-ZNProtectionAutomationCandidatesSetting.md)
Returns a list of candidates for Protection Automation settings.

### [Get-ZNProtectionAutomationSetting](Get-ZNProtectionAutomationSetting.md)
Returns the properties of Protection Automation settings.

### [Get-ZNProtectionPoliciesGroupCandidate](Get-ZNProtectionPoliciesGroupCandidate.md)
Returns a list of candidates for protection policies.

### [Get-ZNProtectionPolicy](Get-ZNProtectionPolicy.md)
Returns a list of protection policies.

### [Get-ZNRulesDistribution](Get-ZNRulesDistribution.md)
Returns an object with rules distribution.

### [Get-ZNRulesStatistics](Get-ZNRulesStatistics.md)
Returns an object with rule statistics.

### [Get-ZNSystemGroup](Get-ZNSystemGroup.md)
Returns a list of System groups.

### [Get-ZNTagGroup](Get-ZNTagGroup.md)
Returns a list of Tags.

### [Get-ZNTrustServer](Get-ZNTrustServer.md)
Returns a list of trust servers.

### [Get-ZNUser](Get-ZNUser.md)
Returns a list of Users.

### [Get-ZNUserStatistics](Get-ZNUserStatistics.md)
Get Users statistics

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

### [Invoke-ZNRediscoverAnsibleSetting](Invoke-ZNRediscoverAnsibleSetting.md)
Rediscover monitored assets from Ansible

### [Invoke-ZNRediscoverMonitoredGroupSetting](Invoke-ZNRediscoverMonitoredGroupSetting.md)
Rediscover monitored assets

### [Invoke-ZNSimulateMfaOutboundPolicy](Invoke-ZNSimulateMfaOutboundPolicy.md)
Returns a list of outbound MFA policies that would match the simulation.

### [Invoke-ZNSimulateMfaPolicy](Invoke-ZNSimulateMfaPolicy.md)
Returns a list of MFA policies that would match the simulaton.

### [New-ZNAdSecondarySetting](New-ZNAdSecondarySetting.md)
Add a secondary AD settings in Asset Managment

### [New-ZNAssetsLinux](New-ZNAssetsLinux.md)
Returns the assetId of the created Linux asset.

### [New-ZNAssetsOt](New-ZNAssetsOt.md)
Returns an empty object.

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

### [Protect-ZNAsset](Protect-ZNAsset.md)
Returns and empty object.

### [Protect-ZNAssetsOt](Protect-ZNAssetsOt.md)
Returns an empty response.

### [Remove-ZNAccessTokenId](Remove-ZNAccessTokenId.md)
Remove machine access token

### [Remove-ZNAdSecondarySetting](Remove-ZNAdSecondarySetting.md)
Returns an empty reponse.

### [Remove-ZNApiKey](Remove-ZNApiKey.md)
Deletes the API key

### [Remove-ZNCustomGroup](Remove-ZNCustomGroup.md)
Returns an empty object.

### [Remove-ZNCustomGroupsMember](Remove-ZNCustomGroupsMember.md)
Returns an empty object.

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

### [Search-ZNAsset](Search-ZNAsset.md)
Returns an assetId.

### [Set-ZNApiKey](Set-ZNApiKey.md)
Set the API key for use in all other cmdlets

### [Switch-ZNEnvironment](Switch-ZNEnvironment.md)
Change the Zero Networks environment token

### [Test-ZNAssetsProtection](Test-ZNAssetsProtection.md)
Returns a number of assets that are valid for protection.

### [Test-ZNAssetsUnprotect](Test-ZNAssetsUnprotect.md)
Returns a number of assets that are valid to unprotect.

### [Unprotect-ZNAsset](Unprotect-ZNAsset.md)
Returns an empty object.

### [Unprotect-ZNAssetsOt](Unprotect-ZNAssetsOt.md)
Returns and empty body.

### [Update-ZNAccessTokenId](Update-ZNAccessTokenId.md)
Regenerate machine access token

### [Update-ZNActivitiesSetting](Update-ZNActivitiesSetting.md)
Update the Activities settings in Data Collection

### [Update-ZNAdSecondarySetting](Update-ZNAdSecondarySetting.md)
Update a secondary AD settings in Asset Managment

### [Update-ZNAdSetting](Update-ZNAdSetting.md)
Set the AD settings in Asset Managment

### [Update-ZNAiExclusionNetworkBoth](Update-ZNAiExclusionNetworkBoth.md)
Set AI network exclusion for clients and servers: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

### [Update-ZNAiExclusionNetworkClient](Update-ZNAiExclusionNetworkClient.md)
Set AI network exclusion for clients: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

### [Update-ZNAiExclusionNetworkServer](Update-ZNAiExclusionNetworkServer.md)
Set AI network exclusion for servers: lists of tcp/udp ports / ports ranges + boolean for icmp protocol, and a list of processes to ignore during learning.

### [Update-ZNAiExclusionSrcEntity](Update-ZNAiExclusionSrcEntity.md)
Set AI source entities to ignore during learning.

### [Update-ZNAnsibleSetting](Update-ZNAnsibleSetting.md)
Get the Ansible settings in Asset Managment

### [Update-ZNAssetOt](Update-ZNAssetOt.md)
Edit OT-IoT asset

### [Update-ZNCustomGroup](Update-ZNCustomGroup.md)
Returns an empty object.

### [Update-ZNDefaultApplicationSetting](Update-ZNDefaultApplicationSetting.md)
Update the Default SSO Application settings in Identity Providers

### [Update-ZNFirewallSetting](Update-ZNFirewallSetting.md)
Returns the properties of the updated Firewall settings.

### [Update-ZNIdpSetting](Update-ZNIdpSetting.md)
Update identity provider settings in Identity Providers

### [Update-ZNInboundAllowRule](Update-ZNInboundAllowRule.md)
Returns the properties of the update Inbound Allow rule.

### [Update-ZNInboundBlockRule](Update-ZNInboundBlockRule.md)
Returns the properties of the updated Inbound Block rule.

### [Update-ZNJamfCredentialsSetting](Update-ZNJamfCredentialsSetting.md)
Returns the upddated properties of JAMF Credentials settings.

### [Update-ZNLinuxUserSetting](Update-ZNLinuxUserSetting.md)
Update the linux user settings in Asset Managment

### [Update-ZNMfaAuthenticationSetting](Update-ZNMfaAuthenticationSetting.md)
Returns an empty object.

### [Update-ZNMfaDetectionSetting](Update-ZNMfaDetectionSetting.md)
Returns the properties of the updated MFA detection settings.

### [Update-ZNMfaInboundPolicy](Update-ZNMfaInboundPolicy.md)
Returns the properties of the inbound MFA policy after updating.

### [Update-ZNMfaOutboundPolicy](Update-ZNMfaOutboundPolicy.md)
Returns the updated properties of an outbound MFA policy.

### [Update-ZNMonitoredGroupSetting](Update-ZNMonitoredGroupSetting.md)
Update the monitored group settings in Asset Managment

### [Update-ZNNotificationSetting](Update-ZNNotificationSetting.md)
Returns the properties of the updated Mail Notifications settings.

### [Update-ZNOutboundAllowRule](Update-ZNOutboundAllowRule.md)
Returns the properties of the updated Outbound Allow rules.

### [Update-ZNOutboundBlockRule](Update-ZNOutboundBlockRule.md)
Returns the properties of the updated outbound block rule.

### [Update-ZNProtectionAutomationSetting](Update-ZNProtectionAutomationSetting.md)
Returns the properties of the group that was updated for Protection Automation settings.

### [Update-ZNProtectionPolicy](Update-ZNProtectionPolicy.md)
Returns the updated settings for the protection policy.


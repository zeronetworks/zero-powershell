@{
  GUID = '5a6854fa-3bad-4153-a65a-a1aebae7c0f5'
  RootModule = './ZN.Segment.psm1'
  ModuleVersion = '0.0.4'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'Zero Networks'
  CompanyName = 'Zero Networks'
  Copyright = ''
  Description = 'Zero Networks PowerShell: Segment cmdlets'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/ZN.Segment.private.dll'
  FormatsToProcess = './ZN.Segment.format.ps1xml'
  FunctionsToExport = 'Add-ZNSegmentCustomGroupsMember', 'Get-ZNSegmentAdGroup', 'Get-ZNSegmentAiNextBatch', 'Get-ZNSegmentAsset', 'Get-ZNSegmentAssetsMonitored', 'Get-ZNSegmentAssetsOt', 'Get-ZNSegmentAssetsProtected', 'Get-ZNSegmentAssetsQueued', 'Get-ZNSegmentAssetsStatesStatistics', 'Get-ZNSegmentAssetsStatistics', 'Get-ZNSegmentAudit', 'Get-ZNSegmentCustomGroup', 'Get-ZNSegmentEntity', 'Get-ZNSegmentEntityAnalysis', 'Get-ZNSegmentEntityMemberOf', 'Get-ZNSegmentGroup', 'Get-ZNSegmentGroupsMember', 'Get-ZNSegmentGroupsStatistics', 'Get-ZNSegmentInboundAllowRule', 'Get-ZNSegmentInboundAllowRulesDestinationCandidate', 'Get-ZNSegmentInboundAllowRulesExcludedDestinationCandidate', 'Get-ZNSegmentInboundAllowRulesSourceCandidate', 'Get-ZNSegmentInboundBlockRule', 'Get-ZNSegmentInboundBlockRulesDestinationCandidate', 'Get-ZNSegmentInboundBlockRulesExcludedLocalCandidate', 'Get-ZNSegmentInboundBlockRulesSourceCandidate', 'Get-ZNSegmentMfaInboundPoliciesDestinationCandidate', 'Get-ZNSegmentMfaInboundPoliciesMfamethod', 'Get-ZNSegmentMfaInboundPoliciesSimulateDestinationCandidate', 'Get-ZNSegmentMfaInboundPoliciesSimulateSourceCandidate', 'Get-ZNSegmentMfaInboundPoliciesSimulateSourceUserCandidate', 'Get-ZNSegmentMfaInboundPoliciesSourceCandidate', 'Get-ZNSegmentMfaInboundPoliciesSourceUserCandidate', 'Get-ZNSegmentMfaInboundPolicy', 'Get-ZNSegmentMfaOutboundPoliciesDestinationCandidate', 'Get-ZNSegmentMfaOutboundPoliciesMfamethod', 'Get-ZNSegmentMfaOutboundPoliciesSimulateDesinationCandidate', 'Get-ZNSegmentMfaOutboundPoliciesSimulateSourceCandidate', 'Get-ZNSegmentMfaOutboundPoliciesSimulateSourceUserCandidate', 'Get-ZNSegmentMfaOutboundPoliciesSourceCandidate', 'Get-ZNSegmentMfaOutboundPoliciesSourceUserCandidate', 'Get-ZNSegmentMfaOutboundPolicy', 'Get-ZNSegmentMfaPoliciesDistribution', 'Get-ZNSegmentMfaPoliciesStatistics', 'Get-ZNSegmentOutboundAllowRule', 'Get-ZNSegmentOutboundAllowRulesDestinationCandidate', 'Get-ZNSegmentOutboundAllowRulesExcludedSourceCandidate', 'Get-ZNSegmentOutboundAllowRulesSourceCandidate', 'Get-ZNSegmentOutboundBlockRule', 'Get-ZNSegmentOutboundBlockRulesDestinationCandidate', 'Get-ZNSegmentOutboundBlockRulesExcludedSourceCandidate', 'Get-ZNSegmentOutboundBlockRulesSourceCandidate', 'Get-ZNSegmentProtectionPoliciesGroupCandidate', 'Get-ZNSegmentProtectionPolicy', 'Get-ZNSegmentRulesDistribution', 'Get-ZNSegmentRulesStatistics', 'Get-ZNSegmentSystemGroup', 'Get-ZNSegmentTagGroup', 'Get-ZNSegmentTrustServer', 'Get-ZNSegmentUser', 'Get-ZNSegmentUserStatistics', 'Invoke-ZNSegmentEncodeEntityIP', 'Invoke-ZNSegmentEncodeEntityIPRange', 'Invoke-ZNSegmentEncodeEntitySubnet', 'Invoke-ZNSegmentExtendAssetQueue', 'Invoke-ZNSegmentQueueAsset', 'Invoke-ZNSegmentSimulateMfaInboundPolicy', 'Invoke-ZNSegmentSimulateMfaOutboundPolicy', 'New-ZNSegmentAssetsLinux', 'New-ZNSegmentAssetsOt', 'New-ZNSegmentCustomGroup', 'New-ZNSegmentInboundAllowRule', 'New-ZNSegmentInboundBlockRule', 'New-ZNSegmentMfaInboundPolicy', 'New-ZNSegmentMfaOutboundPolicy', 'New-ZNSegmentOutboundAllowRule', 'New-ZNSegmentOutboundBlockRule', 'New-ZNSegmentPortsList', 'New-ZNSegmentProtectionPolicy', 'Protect-ZNSegmentAsset', 'Protect-ZNSegmentAssetsOt', 'Remove-ZNSegmentApiKey', 'Remove-ZNSegmentCustomGroup', 'Remove-ZNSegmentCustomGroupsMember', 'Remove-ZNSegmentInboundAllowRule', 'Remove-ZNSegmentInboundBlockRule', 'Remove-ZNSegmentMfaInboundPolicy', 'Remove-ZNSegmentMfaOutboundPolicy', 'Remove-ZNSegmentOutboundAllowRule', 'Remove-ZNSegmentOutboundBlockRule', 'Remove-ZNSegmentProtectionPolicy', 'Search-ZNSegmentAsset', 'Set-ZNSegmentApiKey', 'Test-ZNSegmentAssetsProtection', 'Test-ZNSegmentAssetsUnprotect', 'Unprotect-ZNSegmentAsset', 'Unprotect-ZNSegmentAssetsOt', 'Update-ZNSegmentCustomGroup', 'Update-ZNSegmentInboundAllowRule', 'Update-ZNSegmentInboundBlockRule', 'Update-ZNSegmentMfaInboundPolicy', 'Update-ZNSegmentMfaOutboundPolicy', 'Update-ZNSegmentOutboundAllowRule', 'Update-ZNSegmentOutboundBlockRule', 'Update-ZNSegmentProtectionPolicy', '*'
  AliasesToExport = '*'
  PrivateData = @{
    PSData = @{
      Tags = 'Zero', 'Networks', 'PSModule', 'Segment'
      LicenseUri = 'https://github.com/zeronetworks/zero-powershell/license.md'
      ProjectUri = 'https://github.com/ZeroNetworks/zero-powershell'
      ReleaseNotes = ''
    }
  }
}

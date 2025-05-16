if(($null -eq $TestName) -or ($TestName -contains 'New-ZNUserMfaOutboundPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNUserMfaOutboundPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNUserMfaOutboundPolicy' {
    It 'CreateExpanded' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
        $destination = (Get-ZNMfaOutboundPoliciesDestinationCandidate -Search "otv2").Items
        $source = (Get-ZNMfaOutboundPoliciesSourceCandidate -search "All Segmented Assets").Items
        $sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcEntityInfosItem]::new()
        $sourceEntity.Id = $source.Id
        $sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcUserInfosItem]::new()
        $sourceUserEntity.Id = $user.Id
        $portsList = New-ZNPortsList -Empty
        $policy = New-ZNUserMfaOutboundPolicy -UserId $user.id -AdditionalPortsList $portsList -DstEntityInfoId $destination.Id -DstPort "23" -FallbackToLoggedOnUser -OverrideBuiltins -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1
        $policy.ItemId | Should -Not -BeNullOrEmpty
        Remove-ZNUserMfaOutboundPolicy -UserId $user.id -ReactivePolicyId $policy.ItemId
    }
}

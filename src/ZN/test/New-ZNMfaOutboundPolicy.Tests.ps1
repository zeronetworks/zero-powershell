if(($null -eq $TestName) -or ($TestName -contains 'New-ZNMfaOutboundPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNMfaOutboundPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNMfaOutboundPolicy' {
    It 'CreateExpanded' {
        $destination = (Get-ZNMfaOutboundPoliciesDestinationCandidate -Search "Protected OT/IoT devices").Items
        $source = (Get-ZNMfaOutboundPoliciesSourceCandidate -search "All segmented Assets").Items
        $sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyOutboundBodySrcEntityInfosItem]::new()
        $sourceEntity.Id = $source.Id
        $sourceUser = (Get-ZNMfaInboundPoliciesSourceUserCandidate -search "Any User").Items
        $sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyOutboundBodySrcUserInfosItem]::new()
        $sourceUserEntity.Id = $sourceUser.Id
        [string]$dstPort = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Empty
        $policy = New-ZNMfaOutboundPolicy -AdditionalPortsList $portsList -DstEntityInfoId $destination.Id -DstPort $dstPort -FallbackToLoggedOnUser -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1 -OverrideBuiltins:$false
        $policy.ItemId | Should -Not -Be $null
        Remove-ZNMfaOutboundPolicy -ReactivePolicyId $policy.ItemId
    }
}

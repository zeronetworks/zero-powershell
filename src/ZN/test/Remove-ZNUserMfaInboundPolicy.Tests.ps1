if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNUserMfaInboundPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNUserMfaInboundPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNUserMfaInboundPolicy' {
    It 'Delete' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
        $destination = (Get-ZNMfaInboundPoliciesDestinationCandidate -Search "LA01").Items
        $source = (Get-ZNMfaInboundPoliciesSourceCandidate -search "Any Asset").Items
        $sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcEntityInfosItem]::new()
        $sourceEntity.Id = $source.Id
        $sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcUserInfosItem]::new()
        $sourceUserEntity.Id = $user.Id
        $portsList = New-ZNPortsList -Empty
        $policy = New-ZNUserMfaInboundPolicy -UserId $user.id -AdditionalPortsList $portsList -DstEntityInfoId $destination.Id -DstPort "23" -DstProcessNames @("*") -FallbackToLoggedOnUser -OverrideBuiltins -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1
        Remove-ZNUserMfaInboundPolicy -UserId $user.id -ReactivePolicyId $policy.ItemId | Should -Not -Throw
    }
}

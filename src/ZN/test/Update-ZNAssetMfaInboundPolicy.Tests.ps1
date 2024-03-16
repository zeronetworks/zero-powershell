if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetMfaInboundPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetMfaInboundPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetMfaInboundPolicy' {
    It 'UpdateExpanded' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        $source = (Get-ZNMfaInboundPoliciesSourceCandidate -search "Any Asset").Items
        $sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcEntityInfosItem]::new()
        $sourceEntity.Id = $source.Id
        $sourceUser = (Get-ZNMfaInboundPoliciesSourceUserCandidate -search "Any User").Items
        $sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcUserInfosItem]::new()
        $sourceUserEntity.Id = $sourceUser.Id
        [string]$dstPorts = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Empty
        $policy = New-ZNMfaInboundPolicy -AdditionalPortsList $portsList -DstEntityInfoId $asset -DstPort $dstPorts -DstProcessNames @("*") -FallbackToLoggedOnUser -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1 -OverrideBuiltins:$false
        
        $newdescription = "new description " + (Get-Random -Minimum 1 -Maximum 100)
        Update-ZNAssetMfaInboundPolicy -AssetId $asset -ReactivePolicyId $policy.ItemId -Description $newdescription
        $updatedPolicy = Get-ZNAssetMfaInboundPolicy -AssetId $asset -ReactivePolicyId $policy.ItemId
        $updatedPolicy.ItemDescription | Should -Be $newdescription
        Remove-ZNMfaInboundPolicy -ReactivePolicyId $policy.ItemId
    }
}

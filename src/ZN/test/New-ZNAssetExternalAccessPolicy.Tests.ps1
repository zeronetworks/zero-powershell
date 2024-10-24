if(($null -eq $TestName) -or ($TestName -contains 'New-ZNAssetExternalAccessPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNAssetExternalAccessPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNAssetExternalAccessPolicy' {
    It 'CreateExpanded' {
        $assetId = (Search-ZNAsset -Fqdn ls01.posh.local).AssetId
        $srcUser = Get-ZNExternalAccessPolicySourceUserCandidate -Search "Any user"
        $portsList = New-ZNPortsList -Protocol TCP -Ports 12
        $dstAsset = (Search-ZNAsset -Fqdn ls01.posh.local).AssetId
        $Policy = New-ZNAssetExternalAccessPolicy -AssetId $assetId -DstAssetId $dstAsset -DstPortsList $portsList -DstProcessNamesList @("*") -Name "ExternalNewAssetTest" -RuleDuration 4 -SrcUserIdsList @($srcUser.Id) -State 1 -Url "https://external.posh.local"
        $Policy.ItemId | Should -Not -BeNullOrEmpty
        Remove-ZNAssetExternalAccessPolicy -AssetId $assetId -PolicyId $Policy.ItemId
    }
}

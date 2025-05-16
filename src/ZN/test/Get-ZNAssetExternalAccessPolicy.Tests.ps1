if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetExternalAccessPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetExternalAccessPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetExternalAccessPolicy' {
    It 'List' {
        $assetId = (Search-ZNAsset -Fqdn as01.posh.local).AssetId
        (Get-ZNAssetExternalAccessPolicy -AssetId $assetId).Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $assetId = (Search-ZNAsset -Fqdn as01.posh.local).AssetId
        $policy = (Get-ZNAssetExternalAccessPolicy -AssetId $assetId).Items | Select-Object -First 1
        $getpolicy = Get-ZNAssetExternalAccessPolicy -AssetId $assetId -PolicyId $policy.Id
        $getpolicy.ItemId | Should -Not -BeNullOrEmpty
    }
}

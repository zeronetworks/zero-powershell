if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetMfaIdentityPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetMfaIdentityPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetMfaIdentityPolicy' {
    It 'List' {
        $asset= (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        (Get-ZNAssetMfaIdentityPolicy -AssetId $asset).Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $asset= (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        $policy = (Get-ZNAssetMfaIdentityPolicy -AssetId $asset).Items | select -First 1
        (Get-ZNAssetMfaIdentityPolicy -AssetId $asset -ReactivePolicyId $policy.Id).ItemId | Should -Not -BeNullOrEmpty
    }
}

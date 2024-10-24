if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetIdentityRulesAssetsCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetIdentityRulesAssetsCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetIdentityRulesAssetsCandidate' {
    It 'List' {
        $asset= (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        { Get-ZNAssetIdentityRulesAssetsCandidate -AssetId $asset } | Should -Not -BeNullOrEmpty
    }
}

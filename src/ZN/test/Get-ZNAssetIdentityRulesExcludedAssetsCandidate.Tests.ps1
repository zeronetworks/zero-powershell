if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetIdentityRulesExcludedAssetsCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetIdentityRulesExcludedAssetsCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetIdentityRulesExcludedAssetsCandidate' {
    It 'List' {
        $asset = Search-ZNAsset -Fqdn dc01.posh.local
        { Get-ZNAssetIdentityRulesExcludedAssetsCandidate -AssetId $asset } | Should -Not -Be $null
    }
}

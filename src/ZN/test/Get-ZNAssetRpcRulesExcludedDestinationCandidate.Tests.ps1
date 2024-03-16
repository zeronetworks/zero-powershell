if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetRpcRulesExcludedDestinationCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetRpcRulesExcludedDestinationCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetRpcRulesExcludedDestinationCandidate' {
    It 'List' {
        $asset = (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        $candidates = Get-ZNAssetRpcRulesExcludedDestinationCandidate -AssetId $asset
        $candidates.Items.Count | Should -BeGreaterThan 0
    }
}

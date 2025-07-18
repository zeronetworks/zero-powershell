if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetInboundRulesExcludedDestinationCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetInboundRulesExcludedDestinationCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetInboundRulesExcludedDestinationCandidate' {
    It 'List' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        (Get-ZNAssetInboundRulesExcludedDestinationCandidate -AssetId $asset).Items.Count | Should -BeGreaterThan 0
    }
}

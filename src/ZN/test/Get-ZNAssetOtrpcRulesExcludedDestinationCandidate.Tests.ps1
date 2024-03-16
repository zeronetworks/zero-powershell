if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetOtrpcRulesExcludedDestinationCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetOtrpcRulesExcludedDestinationCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetOtrpcRulesExcludedDestinationCandidate' {
    It 'List' {
        $otasset = Get-ZNAssetsOt | where {$_.fqdn -eq 'switch01'}
        $candidates = Get-ZNAssetOtrpcRulesExcludedDestinationCandidate -AssetId $otasset.Id
        $candidates.Items.Count | Should -BeGreaterThan 0
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetOtrpcRulesSourceCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetOtrpcRulesSourceCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetOtrpcRulesSourceCandidate' {
    It 'List' {
        $otasset = Get-ZNAssetsOt | where {$_.fqdn -eq 'switch01'}
        $candidates = Get-ZNAssetOtrpcRulesSourceCandidate -AssetId $otasset.Id
        $candidates.Items.Count | Should -BeGreaterThan 0
    }
}

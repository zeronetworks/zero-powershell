if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetInboundRulesSourceCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetInboundRulesSourceCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetInboundRulesSourceCandidate' {
    It 'List' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        (Get-ZNAssetInboundRulesSourceCandidate -AssetId $asset -RuleType 1).Items.Count | Should -BeGreaterThan 0
    }
}

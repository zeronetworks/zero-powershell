if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetOtInboundOtrulesUserCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetOtInboundOtrulesUserCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetOtInboundOtrulesUserCandidate' {
    It 'List' {
        $assetId = (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        (Get-ZNAssetOtInboundOtrulesUserCandidate -AssetId $assetId).Items.Count | Should -BeGreaterThan 0
    }
}

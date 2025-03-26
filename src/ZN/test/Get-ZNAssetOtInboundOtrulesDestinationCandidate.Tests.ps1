if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetOtInboundOtrulesDestinationCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetOtInboundOtrulesDestinationCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetOtInboundOtrulesDestinationCandidate' {
    It 'List' {
        $assetOt = Get-ZNAssetsOt | Select -First 1
        (Get-ZNAssetOtInboundOtrulesDestinationCandidate -AssetId $assetOt.Id).Items.Count | Should -BeGreaterThan 0
    }
}

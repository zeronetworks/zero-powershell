if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetExternalAccessPolicyDestinationAssetsCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetExternalAccessPolicyDestinationAssetsCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetExternalAccessPolicyDestinationAssetsCandidate' {
    It 'List' {
        $assetId = (Search-ZNAsset -Fqdn as01.posh.local).AssetId
        (Get-ZNAssetExternalAccessPolicyDestinationAssetsCandidate -AssetId $assetId).Count | Should -BeGreaterThan 0
    }
}

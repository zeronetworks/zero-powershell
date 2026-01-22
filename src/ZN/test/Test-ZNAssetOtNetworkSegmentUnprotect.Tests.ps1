if(($null -eq $TestName) -or ($TestName -contains 'Test-ZNAssetOtNetworkSegmentUnprotect'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Test-ZNAssetOtNetworkSegmentUnprotect.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Test-ZNAssetOtNetworkSegmentUnprotect' {
    It 'Validate' {
        $asset = search-ZNAsset -Fqdn "poshotv2.posh.local"
        (Test-ZNAssetOtNetworkSegmentUnprotect -AssetId $asset.AssetId).AffectedAssetsCount | Should -Not -BeNullOrEmpty
    }

    It 'ValidateExpanded' {
        $asset = search-ZNAsset -Fqdn "poshotv2.posh.local"
        (Test-ZNAssetOtNetworkSegmentUnprotect -Items @($asset.AssetId)).AffectedAssetsCount | Should -Not -BeNullOrEmpty
    }
}

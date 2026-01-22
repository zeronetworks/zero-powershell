if(($null -eq $TestName) -or ($TestName -contains 'Test-ZNAssetNetworkSegmentProtect'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Test-ZNAssetNetworkSegmentProtect.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Test-ZNAssetNetworkSegmentProtect' {
    It 'Validate' {
        $asset = (Get-ZNAssetsMonitored -limit 50).Items | where {$_.OSType -eq 2} | Select-Object -First 1
        (Test-ZNAssetNetworkSegmentProtect -AssetId $asset.Id).AffectedAssetsCount | Should -Not -BeNullOrEmpty
    }

    It 'ValidateExpanded' {
        $asset = (Get-ZNAssetsMonitored -limit 50).Items | where {$_.OSType -eq 2} | Select-Object -First 1
        (Test-ZNAssetNetworkSegmentProtect -Items @($asset.Id)).AffectedAssetsCount | Should -Not -BeNullOrEmpty
    }
}

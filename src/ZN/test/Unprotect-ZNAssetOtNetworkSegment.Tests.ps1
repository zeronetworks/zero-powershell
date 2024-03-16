if(($null -eq $TestName) -or ($TestName -contains 'Unprotect-ZNAssetOtNetworkSegment'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Unprotect-ZNAssetOtNetworkSegment.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Unprotect-ZNAssetOtNetworkSegment' {
    It 'Unprotect' {
        $asset = (Search-ZNAsset -Fqdn switch03).AssetId
        Protect-ZNAssetOtNetworkSegment -Items @($asset)
        { Unprotect-ZNAssetOtNetworkSegment -Items @($asset) } | Should -Not -Throw
    }

    It 'UnprotectExpanded' {
        $asset = (Search-ZNAsset -Fqdn switch03).AssetId
        Protect-ZNAssetOtNetworkSegment -AssetId $asset
        { Unprotect-ZNAssetOtNetworkSegment -AssetId $asset } | Should -Not -Throw
    }
}

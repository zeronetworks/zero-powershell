if(($null -eq $TestName) -or ($TestName -contains 'Protect-ZNAssetOtNetworkSegment'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Protect-ZNAssetOtNetworkSegment.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Protect-ZNAssetOtNetworkSegment' {
    It 'Protect' {
        $asset = (Search-ZNAsset -Fqdn activeOT.posh.local).AssetId
        { Protect-ZNAssetOtNetworkSegment -Items @($asset) } | Should -Not -Throw
        Unprotect-ZNAssetOtNetworkSegment -Items @($asset)
    }

    It 'ProtectExpanded' {
        $asset = (Search-ZNAsset -Fqdn activeOT.posh.local).AssetId
        { Protect-ZNAssetOtNetworkSegment -AssetId $asset } | Should -Not -Throw
        Unprotect-ZNAssetOtNetworkSegment -AssetId $asset
    }
}

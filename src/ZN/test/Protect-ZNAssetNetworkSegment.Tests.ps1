if(($null -eq $TestName) -or ($TestName -contains 'Protect-ZNAssetNetworkSegment'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Protect-ZNAssetNetworkSegment.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Protect-ZNAssetNetworkSegment' {
    It 'Protect' {
        $asset = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        { Protect-ZNAssetNetworkSegment -Items @($asset) } | Should -Not -Throw
        Unprotect-ZNAssetNetworkSegment -Items @($asset)
    }

    It 'ProtectExpanded' {
        $asset = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        { Protect-ZNAssetNetworkSegment -AssetId $asset } | Should -Not -Throw
        Unprotect-ZNAssetNetworkSegment -AssetId $asset
    }
}

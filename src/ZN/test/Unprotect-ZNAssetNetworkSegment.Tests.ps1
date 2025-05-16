if(($null -eq $TestName) -or ($TestName -contains 'Unprotect-ZNAssetNetworkSegment'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Unprotect-ZNAssetNetworkSegment.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Unprotect-ZNAssetNetworkSegment' {
    It 'Unprotect' {
        $asset = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        Protect-ZNAssetNetworkSegment -Items @($asset)
        { Unprotect-ZNAssetNetworkSegment -Items @($asset) } | Should -Not -Throw
    }

    It 'UnprotectExpanded' {
        $asset = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        Protect-ZNAssetNetworkSegment -AssetId $asset
        { Unprotect-ZNAssetNetworkSegment -AssetId $asset } | Should -Not -Throw
    }
}
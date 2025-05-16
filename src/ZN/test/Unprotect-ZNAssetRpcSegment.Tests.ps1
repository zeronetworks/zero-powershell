if(($null -eq $TestName) -or ($TestName -contains 'Unprotect-ZNAssetRpcSegment'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Unprotect-ZNAssetRpcSegment.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Unprotect-ZNAssetRpcSegment' {
    It 'UnprotectExpanded' {
        $asset = (Search-ZNAsset -Fqdn ss01.posh.local).AssetId
        Add-ZNAssetRpcMonitoring -Items @($asset)
        start-sleep 30
        Protect-ZNAssetRpcSegment -Items @($asset)
        start-sleep 30
        { Unprotect-ZNAssetRpcSegment -Items @($asset) } | Should -Not -Throw
        start-sleep 30
    }

    It 'Unprotect' {
        $asset = (Search-ZNAsset -Fqdn ss01.posh.local).AssetId
        Add-ZNAssetRpcMonitoring -Items @($asset)
        start-sleep 30
        Protect-ZNAssetRpcSegment -AssetId $asset
        start-sleep 30
        { Unprotect-ZNAssetRpcSegment -AssetId $asset } | Should -Not -Throw
        start-sleep 30
    }
}

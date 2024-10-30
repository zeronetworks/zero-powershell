if(($null -eq $TestName) -or ($TestName -contains 'Protect-ZNAssetRpcSegment'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Protect-ZNAssetRpcSegment.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Protect-ZNAssetRpcSegment' {
    It 'ProtectExpanded' {
        $asset = (Search-ZNAsset -Fqdn ts01.posh.local).AssetId
        Add-ZNAssetRpcMonitoring -Items @($asset)
        start-sleep 30
        { Protect-ZNAssetRpcSegment -Items @($asset) } | Should -Not -Throw
        start-sleep 30
        Unprotect-ZNAssetRpcSegment -Items @($asset)
        start-sleep 30
        Remove-ZNAssetRpcMonitoring -Items @($asset)
        start-sleep 30
    }

    It 'ProtectExpanded1' {
         $asset = (Search-ZNAsset -Fqdn ts01.posh.local).AssetId
        Add-ZNAssetRpcMonitoring -AssetId $asset
        start-sleep 30
        { Protect-ZNAssetRpcSegment -AssetId $asset } | Should -Not -Throw
        start-sleep 30
        Unprotect-ZNAssetRpcSegment -AssetId $asset
        start-sleep 30
        Remove-ZNAssetRpcMonitoring -AssetId $asset
        start-sleep 30
    }
}

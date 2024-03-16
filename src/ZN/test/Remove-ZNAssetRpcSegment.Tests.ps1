if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNAssetRpcSegment'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNAssetRpcSegment.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNAssetRpcSegment' {
    It 'Delete' {
        $asset = (Search-ZNAsset -Fqdn ts01.posh.local).AssetId
        Add-ZNAssetRpcMonitoring -Items @($asset)
        start-sleep 30
        Add-ZNAssetRpcSegment -Items @($asset)
        start-sleep 30
        { Remove-ZNAssetRpcSegment -Items @($asset) } | Should -Not -Throw
        start-sleep 30
    }

    It 'DeleteExpanded' {
        $asset = (Search-ZNAsset -Fqdn ts01.posh.local).AssetId
        Add-ZNAssetRpcMonitoring -Items @($asset)
        start-sleep 30
        Add-ZNAssetRpcSegment -AssetId $asset
        start-sleep 30
        { Remove-ZNAssetRpcSegment -AssetId $asset } | Should -Not -Throw
        start-sleep 30
    } 
}

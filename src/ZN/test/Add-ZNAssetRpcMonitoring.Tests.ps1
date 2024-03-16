if(($null -eq $TestName) -or ($TestName -contains 'Add-ZNAssetRpcMonitoring'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Add-ZNAssetRpcMonitoring.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Add-ZNAssetRpcMonitoring' {
    It 'Add' {
        $asset= (Search-ZNAsset -Fqdn ts01.posh.local).AssetId
        { Add-ZNAssetRpcMonitoring -AssetId $asset } | Should -Not -Throw
        start-sleep 30
        Remove-ZNAssetRpcMonitoring -AssetId $asset
        start-sleep 30
    }
    It 'AddExpanded' {
        $asset= (Search-ZNAsset -Fqdn ts01.posh.local).AssetId
        { Add-ZNAssetRpcMonitoring -Items @($asset) } | Should -Not -Throw
        start-sleep 30
        Remove-ZNAssetRpcMonitoring -Items @($asset)
        start-sleep 30
    }
}

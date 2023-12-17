if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNAssetRpcMonitoring'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNAssetRpcMonitoring.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNAssetRpcMonitoring' {
    It 'Delete' {
        $asset = Search-ZNAsset -Fqdn wac01.posh.local
        Add-ZNAssetRpcMonitoring -Items @($asset)
        start-sleep 30
        { Remove-ZNAssetRpcMonitoring -Items @($asset) } | Should -Not -Throw
        start-sleep 30
    }

    It 'DeleteViaIdentity' {
        $asset = Search-ZNAsset -Fqdn wac01.posh.local
        Add-ZNAssetRpcMonitoring -AssetId $asset
        start-sleep 30
        { Remove-ZNAssetRpcMonitoring -AssetId $asset } | Should -Not -Throw
        start-sleep 30
    }
}

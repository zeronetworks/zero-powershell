if(($null -eq $TestName) -or ($TestName -contains 'Invoke-ZNAssetRpcExtendQueue'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNAssetRpcExtendQueue.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-ZNAssetRpcExtendQueue' {
    It 'QueueExpanded' {
        $asset = Search-ZNAsset -Fqdn dc01.posh.local
        Invoke-ZNAssetRpcQueue -items @($asset.AssetId) -QueueDays 14
        { Invoke-ZNAssetRpcExtendQueue -items @($asset.AssetId) -ExtendByDays 14 } | Should -Not -Throw
        Remove-ZNAssetRpcSegment -Items @($asset.AssetId)
    }
}

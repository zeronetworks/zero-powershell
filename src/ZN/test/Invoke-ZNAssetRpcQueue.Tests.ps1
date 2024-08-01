if(($null -eq $TestName) -or ($TestName -contains 'Invoke-ZNAssetRpcQueue'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNAssetRpcQueue.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-ZNAssetRpcQueue' {
    It 'QueueExpanded' {
        $asset = Search-ZNAsset -Fqdn dc01.posh.local
        { Invoke-ZNAssetRpcQueue -items @($asset.AssetId) -QueueDays 90 } | Should -Not -Throw
        Remove-ZNAssetRpcSegment -Items @($asset.AssetId)
    }
}

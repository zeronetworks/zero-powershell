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
        $asset = (Search-ZNAsset -Fqdn ss01.posh.local).AssetId
        $monitored = (Get-ZNAssetsRpcMonitored).Items | where {$_.Id -eq $asset}
        if($monitored.Count -eq 0){
            Add-ZNAssetRpcMonitoring -AssetId $asset
            start-sleep 30
        }
        { Invoke-ZNAssetRpcQueue -Items @($asset) -QueueDays 14 } | Should -Not -Throw
        Unprotect-ZNAssetRpcSegment -Items @($asset)
         Remove-ZNAssetRpcMonitoring -AssetId $asset
    }
}

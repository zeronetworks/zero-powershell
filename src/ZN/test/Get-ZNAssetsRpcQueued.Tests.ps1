if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetsRpcQueued'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetsRpcQueued.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetsRpcQueued' {
    It 'List' {
        $asset = Search-ZNAsset -Fqdn dc01.posh.local
        Invoke-ZNAssetRpcQueue -items @($asset.AssetId) -QueueDays 90
        (Get-ZNAssetsRpcQueued).Items.Count | Should -BeGreaterThan 0
         Remove-ZNAssetRpcSegment -Items @($asset.AssetId)
    }
}

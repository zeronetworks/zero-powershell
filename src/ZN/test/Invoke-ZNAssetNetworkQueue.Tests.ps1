if(($null -eq $TestName) -or ($TestName -contains 'Invoke-ZNAssetNetworkQueue'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNAssetNetworkQueue.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-ZNAssetNetworkQueue' {
    It 'QueueExpanded' {
        $asset = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        { Invoke-ZNAssetNetworkQueue -Items @($asset) -QueueDays 14 } | Should -Not -Throw
        Unprotect-ZNAssetNetworkSegment -Items @($asset)
    }

    It 'QueueExpanded1' {
        $asset = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        { Invoke-ZNAssetNetworkQueue -AssetId $asset -QueueDays 14} | Should -Not -Throw
        Unprotect-ZNAssetNetworkSegment -Assetid $asset
    }
}

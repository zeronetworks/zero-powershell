if(($null -eq $TestName) -or ($TestName -contains 'Invoke-ZNAssetNetworkExtendQueue'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNAssetNetworkExtendQueue.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-ZNAssetNetworkExtendQueue' {
    It 'QueueExpanded' {
        $asset = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        Invoke-ZNAssetNetworkQueue -Items @($asset) -QueueDays 14
        { Invoke-ZNAssetNetworkExtendQueue -Items @($asset) -ExtendByDays 14 } | Should -Not -Throw
        Unprotect-ZNAssetNetworkSegment -Items @($asset)
    }

    It 'QueueExpanded1' {
        $asset = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        Invoke-ZNAssetNetworkQueue -AssetId $asset -QueueDays 14
        { Invoke-ZNAssetNetworkExtendQueue -AssetId $asset -ExtendByDays 14 } | Should -Not -Throw
        Unprotect-ZNAssetNetworkSegment -Assetid $asset
    }
}

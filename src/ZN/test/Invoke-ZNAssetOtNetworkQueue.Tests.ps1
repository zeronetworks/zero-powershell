if(($null -eq $TestName) -or ($TestName -contains 'Invoke-ZNAssetOtNetworkQueue'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNAssetOtNetworkQueue.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-ZNAssetOtNetworkQueue' {
    It 'QueueExpanded' {
        $asset = (Search-ZNAsset -Fqdn otv1.posh.local).AssetId
        { Invoke-ZNAssetOtNetworkQueue -Items @($asset) -QueueDays 14 } | Should -Not -Throw
        Unprotect-ZNAssetOtNetworkSegment -Items @($asset)
    }

    It 'QueueExpanded1' {
        $asset = (Search-ZNAsset -Fqdn otv1.posh.local).AssetId
        { Invoke-ZNAssetOtNetworkQueue -AssetId $asset -QueueDays 14 } | Should -Not -Throw
        Unprotect-ZNAssetOtNetworkSegment -Assetid $asset
    }
}

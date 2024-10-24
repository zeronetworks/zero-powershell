if(($null -eq $TestName) -or ($TestName -contains 'Invoke-ZNAssetIdentityExtendQueue'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNAssetIdentityExtendQueue.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-ZNAssetIdentityExtendQueue' {
    It 'QueueExpanded' {
        $asset = (Search-ZNAsset -Fqdn fs01.posh.local).AssetId
        Invoke-ZNAssetIdentityQueue -Items @($asset) -QueueDays 14
        { Invoke-ZNAssetIdentityExtendQueue -Items @($asset) -ExtendByDays 14 } | Should -Not -Throw
        Unprotect-ZNAssetIdentitySegment -Items @($asset)
    }

    It 'QueueExpanded1' {
        $asset = (Search-ZNAsset -Fqdn fs01.posh.local).AssetId
        Invoke-ZNAssetIdentityQueue -AssetId $asset -QueueDays 14
        { Invoke-ZNAssetIdentityExtendQueue -AssetId $asset -ExtendByDays 14 } | Should -Not -Throw
        Unprotect-ZNAssetIdentitySegment -Assetid $asset
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Invoke-ZNAssetIdentityQueue'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNAssetIdentityQueue.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-ZNAssetIdentityQueue' {
    It 'QueueExpanded' {
        $asset = (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        { Invoke-ZNAssetIdentityQueue -Items @($asset) -QueueDays 14 } | Should -Not -Throw
        Unprotect-ZNAssetIdentity -Items @($asset)
    }

    It 'QueueExpanded1' {
        $asset = (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        { Invoke-ZNAssetIdentityQueue -AssetId $asset -QueueDays 14} | Should -Not -Throw
        Unprotect-ZNAssetIdentity -Assetid $asset
    }
}

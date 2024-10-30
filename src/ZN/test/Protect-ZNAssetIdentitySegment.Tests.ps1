if(($null -eq $TestName) -or ($TestName -contains 'Protect-ZNAssetIdentitySegment'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Protect-ZNAssetIdentitySegment.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Protect-ZNAssetIdentitySegment' {
    It 'Protect1' {
        $asset= (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        { Protect-ZNAssetIdentitySegment -AssetId $asset } | Should -Not -Throw
        Unprotect-ZNAssetIdentitySegment -AssetId $asset
    }

    It 'ProtectExpanded' {
        $asset= (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        { Protect-ZNAssetIdentitySegment -Items @($asset) } | Should -Not -Throw
        Unprotect-ZNAssetIdentitySegment -Items @($asset)
    }
}

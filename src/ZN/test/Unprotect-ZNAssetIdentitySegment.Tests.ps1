if(($null -eq $TestName) -or ($TestName -contains 'Unprotect-ZNAssetIdentitySegment'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Unprotect-ZNAssetIdentitySegment.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Unprotect-ZNAssetIdentitySegment' {
    It 'Unprotect' {
        $asset= (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        Protect-ZNAssetIdentitySegment -Items @($asset) 
        { Unprotect-ZNAssetIdentitySegment -Items @($asset) } | Should -Not -Throw
    }

    It 'UnprotectExpanded' {
        $asset= (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        Protect-ZNAssetIdentitySegment -AssetId $asset
        { Unprotect-ZNAssetIdentitySegment -AssetId $asset } | Should -Not -Throw
    }
}

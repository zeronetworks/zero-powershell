if(($null -eq $TestName) -or ($TestName -contains 'Protect-ZNAssetIdentity'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Protect-ZNAssetIdentity.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Protect-ZNAssetIdentity' {
    It 'Protect1' {
        $asset = Search-ZNAsset -Fqdn dc01.posh.local
        { Protect-ZNAssetIdentity -AssetId $asset } | Should -Not -Throw
        Unprotect-ZNAssetIdentity -AssetId $asset
    }

    It 'ProtectExpanded' {
        $asset = Search-ZNAsset -Fqdn dc01.posh.local
        { Protect-ZNAssetIdentity -Items @($asset) } | Should -Not -Throw
        Unprotect-ZNAssetIdentity -Items @($asset)
    }
}

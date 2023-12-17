if(($null -eq $TestName) -or ($TestName -contains 'Unprotect-ZNAssetIdentity'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Unprotect-ZNAssetIdentity.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Unprotect-ZNAssetIdentity' {
    It 'Unprotect' {
        $asset = Search-ZNAsset -Fqdn dc01.posh.local
        Protect-ZNAssetIdentity -Items @($asset) 
        { Unprotect-ZNAssetIdentity -Items @($asset) } | Should -Not -Throw
    }

    It 'UnprotectExpanded' {
        $asset = Search-ZNAsset -Fqdn dc01.posh.local
        Protect-ZNAssetIdentity -AssetId $asset
        { Unprotect-ZNAssetIdentity -AssetId $asset } | Should -Not -Throw
    }
}

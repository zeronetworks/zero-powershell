if(($null -eq $TestName) -or ($TestName -contains 'Test-ZNAssetIdentityProtect'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Test-ZNAssetIdentityProtect.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Test-ZNAssetIdentityProtect' {
    It 'ValidateExpanded' {
        $asset= (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        (Test-ZNAssetIdentityProtect -AssetId $asset).AffectedAssetsCount | Should -Be 1
    }
    It 'Validate' {
        $asset= (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        (Test-ZNAssetIdentityProtect -Items @($asset)).AffectedAssetsCount | Should -Be 1
    }
}

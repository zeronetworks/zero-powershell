if(($null -eq $TestName) -or ($TestName -contains 'Test-ZNAssetIdentityUnprotect'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Test-ZNAssetIdentityUnprotect.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Test-ZNAssetIdentityUnprotect' {
    It 'ValidateExpanded' {
        $asset = Search-ZNAsset -Fqdn dc01.posh.local
        Test-ZNAssetIdentityUnprotect -AssetId $asset | Should -Be 0
    }
    It 'Validate' {
        $asset = Search-ZNAsset -Fqdn dc01.posh.local
        Test-ZNAssetIdentityUnprotect -Items @($asset) | Should -Be 0
    }
}

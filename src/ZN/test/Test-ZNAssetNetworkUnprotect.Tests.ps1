if(($null -eq $TestName) -or ($TestName -contains 'Test-ZNAssetNetworkUnprotect'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Test-ZNAssetNetworkUnprotect.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Test-ZNAssetNetworkUnprotect' {
    It 'Validate' {
        $asset = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        { Test-ZNAssetNetworkUnprotect -Items @($asset) } | Should -Not -Throw
    }

    It 'ValidateExpanded' {
        $asset = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        { Test-ZNAssetNetworkUnprotect -AssetId $asset } | Should -Not -Throw
    }
}

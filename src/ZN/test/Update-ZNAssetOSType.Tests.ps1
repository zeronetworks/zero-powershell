if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetOSType'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetOSType.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetOSType' {
    It 'UpdateExpanded' {
        $assetId = (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        { Update-ZNAssetOSType -AssetIds @($assetId) -OSType 2 } | Should -Not -Throw
        Update-ZNAssetOSType -AssetIds @($assetId) -OSType 3
    }
}

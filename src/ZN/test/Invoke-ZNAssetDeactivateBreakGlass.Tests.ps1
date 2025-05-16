if(($null -eq $TestName) -or ($TestName -contains 'Invoke-ZNAssetDeactivateBreakGlass'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNAssetDeactivateBreakGlass.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-ZNAssetDeactivateBreakGlass' {
    It 'DeactivateExpanded' {
        $asset = (Search-ZNAsset -Fqdn ss01.posh.local).AssetId
        Initialize-ZNAssetBreakGlass -Items @($asset)
        { Invoke-ZNAssetDeactivateBreakGlass -Items @($asset) } | Should -Not -Throw
    }

    It 'DeactivateExpanded1' {
        $asset = (Search-ZNAsset -Fqdn ss01.posh.local).AssetId
        Initialize-ZNAssetBreakGlass -AssetId $asset
        { Invoke-ZNAssetDeactivateBreakGlass -AssetId $asset } | Should -Not -Throw
    }
}

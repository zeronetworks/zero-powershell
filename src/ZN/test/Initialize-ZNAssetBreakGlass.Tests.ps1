if(($null -eq $TestName) -or ($TestName -contains 'Initialize-ZNAssetBreakGlass'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Initialize-ZNAssetBreakGlass.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Initialize-ZNAssetBreakGlass' {
    It 'ActivateExpanded' {
        $asset = (Search-ZNAsset -Fqdn ss01.posh.local).AssetId
        { Initialize-ZNAssetBreakGlass -Items @($asset) } | Should -Not -Throw
        Invoke-ZNAssetDeactivateBreakGlass -Items @($asset)
    }

    It 'ActivateExpanded1' {
        $asset = (Search-ZNAsset -Fqdn ss01.posh.local).AssetId
        { Initialize-ZNAssetBreakGlass -AssetId $asset } | Should -Not -Throw
        Invoke-ZNAssetDeactivateBreakGlass -AssetId $asset
    }

}

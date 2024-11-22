if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetInactive'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetInactive.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetInactive' {
    It 'SetExpanded' {
        $asset = (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        Update-ZNAssetInactive -Items @($asset)
        $inactiveAsset = Get-ZNAsset -AssetId $asset
        $inactiveAsset.Entity.AssetStatus | Should -Be 12
        Update-ZNAssetActive -Items @($asset)        
    }

    It 'Set' {
        $asset = (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        Update-ZNAssetInactive -AssetId $asset
        $inactiveAsset = Get-ZNAsset -AssetId $asset
        $inactiveAsset.Entity.AssetStatus | Should -Be 12
        Update-ZNAssetActive -AssetId $asset       
    }

}

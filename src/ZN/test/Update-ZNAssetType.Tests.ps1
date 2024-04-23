if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetType'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetType.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetType' {
    It 'SetExpanded' {
        $asset = (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        $assetProperties = Get-ZNAsset -AssetId $asset
        if($assetProperties.EntityAssetType -eq 1){
            $newvalue = 2
        } else {
            $newvalue = 1
        }
        Update-ZNAssetType -AssetId $asset -Type $newvalue
        $updatedAssetProperties = Get-ZNAsset -AssetId $asset
        $updatedAssetProperties.EntityAssetType | Should -Be $newvalue
    }
}

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
    It 'UpdateExpanded' {
        $assetId = (Search-ZNAsset -Fqdn linux0.posh.local).Assetid
        $asset = Get-ZNAsset -AssetId $assetId
        if($asset.Entity.AssetType -eq 1){
            $newValue = 2
        } else {
            $newValue = 1
        }
        Update-ZNAssetType -AssetId $assetId -Type $newValue
        $updatedAsset = Get-ZNAsset -AssetId $assetId
        $updatedAsset.Entity.AssetType | Should -Be $newValue
    }
}

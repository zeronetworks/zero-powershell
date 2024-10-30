if(($null -eq $TestName) -or ($TestName -contains 'Add-ZNGroupsManagedAsset'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Add-ZNGroupsManagedAsset.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Add-ZNGroupsManagedAsset' {
    It 'AddExpanded' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        New-ZNCustomGroup -Name "AddGroupsManagedAssetTest"
        $customGroup = (Get-ZNGroup -Search AddGroupsManagedAssetTest).Items
        Add-ZNGroupsManagedAsset -GroupId $customGroup.Id -GroupType Custom -EntityIds @($asset) -permission 3
        $managedAssets = Get-ZNGroupsManagedAsset -GroupId $customGroup.Id -GroupType Custom
        $managedAssets.EntityId | Should -Be $asset
        Remove-ZNGroupsManagedAsset -GroupId $customGroup.Id -GroupType Custom -GroupOrAssetId $asset
        Remove-ZNCustomGroup -GroupId $customGroup.Id
    }
}

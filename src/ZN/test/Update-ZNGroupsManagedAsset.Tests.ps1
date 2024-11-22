if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNGroupsManagedAsset'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNGroupsManagedAsset.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNGroupsManagedAsset' {
    It 'UpdateExpanded' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        New-ZNCustomGroup -Name "AddGroupsManagedAssetTest"
        $customGroup = (Get-ZNGroup -Search AddGroupsManagedAssetTest).Items
        Add-ZNGroupsManagedAsset -GroupId $customGroup.Id -GroupType Custom -EntityIds @($asset) -permission 3
        
        {Update-ZNGroupsManagedAsset -GroupId $customGroup.Id -GroupType Custom -ManagedEntityId $asset -Permission 2 }| Should -Not -Throw
        Remove-ZNGroupsManagedAsset -GroupId $customGroup.Id -GroupType Custom -GroupOrAssetId $asset
        Remove-ZNCustomGroup -GroupId $customGroup.Id
    }
}

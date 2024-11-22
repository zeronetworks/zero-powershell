if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetOtAssetManager'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetOtAssetManager.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetOtAssetManager' {
    It 'UpdateExpanded' {
        $asset = Get-ZNAssetsOt -Limit 400 | where {$_.Name -eq 'switch01'}
        $user = (get-znuser).Items | select -First 1
        Add-ZNAssetOtAssetManager -AssetId $asset.id -ManagerIds @($user.Id) -Permission 3

        Update-ZNAssetOtAssetManager -AssetId $asset.id -ManagerId $user.id -Permission 2
        $assetManager = Get-ZNAssetOtAssetManager -AssetId $asset.id
        $assetManager.Permission | Should -Be 2
        Remove-ZNAssetOtAssetManager -AssetId $asset.id -GroupOrUserId $user.Id
    }
}

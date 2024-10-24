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
        $asset = (Search-ZNAsset -Fqdn switch01).AssetId
        $user = (get-znuser).Items | select -First 1
        Add-ZNAssetOtAssetManager -AssetId $asset -ManagerIds @($user.Id) -Permission 3

        Update-ZNAssetOTAssetManager -AssetId $asset -ManagerId $user.id -Permission 2
        $assetManager = Get-ZNAssetOTAssetManager -AssetId $asset
        $assetManager.Permission | Should -Be 2
        Remove-ZNAssetOtAssetManager -AssetId $asset -GroupOrUserId $user.Id
    }
}

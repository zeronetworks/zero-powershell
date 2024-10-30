if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetManager'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetManager.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetManager' {
    It 'UpdateExpanded' {
        $asset = (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        $user = (get-znuser).Items | select -First 1
        Add-ZNAssetManager -AssetId $asset -ManagerIds @($user.Id) -Permission 3

        Update-ZNAssetManager -AssetId $asset -ManagerId $user.id -Permission 2
        $assetManager = Get-ZNAssetManager -AssetId $asset
        $assetManager.Permission | Should -Be 2
        Remove-ZNAssetManager -AssetId $asset -GroupOrUserId $user.Id

    }
}

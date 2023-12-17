if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNAssetOtAssetManager'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNAssetOtAssetManager.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNAssetOtAssetManager' {
    It 'Delete' {
        $asset = Search-ZNAsset -Fqdn switch01
        $user = (Get-ZNUser).Items | Select -First 1
        Add-ZNAssetOtAssetManager -AssetId $asset -ManagerIds @($user.Id)
        { Remove-ZNAssetOtAssetManager -AssetId $asset -GroupOrUserId $user.Id } | Should -Not -Throw
    }
}

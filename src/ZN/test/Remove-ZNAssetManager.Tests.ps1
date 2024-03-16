if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNAssetManager'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNAssetManager.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNAssetManager' {
    It 'Delete' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        $user = (Get-ZNUser).Items | Select -First 1
        Add-ZNAssetManager -AssetId $asset -ManagerIds @($user.Id)
        { Remove-ZNAssetManager -AssetId $asset -GroupOrUserId $user.Id } | Should -Not -Throw
    }
}

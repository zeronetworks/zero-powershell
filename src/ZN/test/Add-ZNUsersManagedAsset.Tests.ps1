if(($null -eq $TestName) -or ($TestName -contains 'Add-ZNUsersManagedAsset'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Add-ZNUsersManagedAsset.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Add-ZNUsersManagedAsset' {
    It 'AddExpanded' {
        $asset = Search-ZNAsset -Fqdn linux0.posh.local
        $user = (Get-ZNUser).Items | Select -First 1
        Add-ZNUsersManagedAsset -UserId $user.Id -EntityIds @($asset)
        $managedAssets = Get-ZNUsersManagedAsset -UserId $user.Id
        $managedAssets.EntityId | Should -Be $asset
        Remove-ZNUsersManagedAsset -UserId $user.Id -GroupOrAssetId $asset
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetActive'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetActive.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetActive' {
    It 'SetExpanded' {
        $asset = (Get-ZNAsset -Order desc -OrderColumns name).Items | Where {$_.StateIsAssetConnected -eq $false} | select -First 1
        Update-ZNAssetInactive -Items @($asset.Id)
        $inactiveAsset = Get-ZNAsset -AssetId $asset.Id
        Update-ZNAssetActive -Items @($asset.Id)
        $activeAsset = Get-ZNAsset -AssetId $asset.Id
        $activeAsset.EntityAssetStatus | Should -Not -Be 12
    }

    It 'Set' {
        $asset = (Get-ZNAsset -Order desc -OrderColumns name).Items | Where {$_.StateIsAssetConnected -eq $false} | select -First 1
        Update-ZNAssetInactive -AssetId $asset.Id
        $inactiveAsset = Get-ZNAsset -AssetId $asset.Id
        Update-ZNAssetActive -AssetId $asset.Id
        $activeAsset = Get-ZNAsset -AssetId $asset.Id
        $activeAsset.EntityAssetStatus | Should -Not -Be 12
    }
}

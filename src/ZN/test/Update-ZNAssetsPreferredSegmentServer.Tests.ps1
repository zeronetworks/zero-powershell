if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetsPreferredSegmentServer'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetsPreferredSegmentServer.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetsPreferredSegmentServer' {
    It 'UpdateExpanded' {
        $segmentServer = (Get-ZNSegmentServer)[0]
        $asset = ((Get-ZNAsset -Limit 100).Items | where {$_.PreferredDeploymentId -eq ""})[0]
        Update-ZNAssetsPreferredSegmentServer -AssetIds @($asset.id) -PreferredDeploymentId $segmentServer.Id
        $updatedAsset = Get-ZNAsset -AssetId $asset.Id
        $updatedAsset.EntityPreferredDeploymentId | Should -Not -BeNullOrEmpty
        Update-ZNAssetsPreferredSegmentServer -AssetIds @($asset.id) -PreferredDeploymentId $null
    }
}

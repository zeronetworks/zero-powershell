if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetsPreferredSegmentServer'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetsPreferredSegmentServer.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetsPreferredSegmentServer' {
    It 'GetExpanded' {
        $asset =  ((Get-ZNAsset -limit 100).Items | where {$_.PreferredDeploymentId -ne ""})[0]
        (Get-ZNAssetsPreferredSegmentServer -AssetId $asset.Id).PreferredDeployment | Should -Not -BeNullOrEmpty
    }
}

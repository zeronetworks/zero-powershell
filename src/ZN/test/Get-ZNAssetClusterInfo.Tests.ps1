if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetClusterInfo'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetClusterInfo.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetClusterInfo' {
    It 'Get' {
        $clusterInfo = Get-ZNAssetClusterInfo -AssetId a:a:P0GVm1iZ
        $clusterInfo.ClusterInfoClusterName | Should -Not -Be $null
    }
}

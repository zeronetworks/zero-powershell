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
        $asset = (Search-ZNAsset -Fqdn fs02.posh.local).AssetId
        $clusterInfo = Get-ZNAssetClusterInfo -AssetId $asset
        $clusterInfo.ClusterInfoClusterName | Should -Not -BeNullOrEmpty
    }
}

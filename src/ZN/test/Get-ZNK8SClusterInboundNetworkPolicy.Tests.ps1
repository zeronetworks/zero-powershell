if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterInboundNetworkPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterInboundNetworkPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterInboundNetworkPolicy' {
    It 'List' {
        $cluster = (Get-ZNK8SCluster).ITems | Select -First 1
        (Get-ZNK8SClusterInboundNetworkPolicy -K8SClusterId $cluster.id).Items.Count | Should -BeGreaterThan
    }
}

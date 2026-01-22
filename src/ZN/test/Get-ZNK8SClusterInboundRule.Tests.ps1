if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterInboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterInboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterInboundRule' {
    It 'List' {
        $k8sCluster = (Get-ZNK8SCluster).Items | where {$_.Name -eq $env.K8sCluster}| Select-Object -First 1
        (Get-ZNK8SClusterInboundRule -K8sClusterId $k8sCluster.Id).Items.Count | Should -BeGreaterThan 0
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterNamespaceOutboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterNamespaceOutboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterNamespaceOutboundRule' {
    It 'List' {
        $k8sCluster = (Get-ZNK8SCluster).Items | Select-Object -First 1
        $k8sClusterNamespace = (Get-ZNK8SClusterNamespace -K8SClusterId $k8sCluster.id -Limit 400).Items | where {$_.Name -eq "znK8s"}
        (Get-ZNK8SClusterNamespaceOutboundRule -K8SClusterId $k8sCluster.id -K8SNamespaceId $k8sClusterNamespace.Id).Items.Count | Should -BeGreaterThan 0
    }
}

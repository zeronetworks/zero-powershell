if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterNamespaceOutboundNetworkPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterNamespaceOutboundNetworkPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterNamespaceOutboundNetworkPolicy' {
    It 'List' {
        $cluster = (Get-ZNK8SCluster).ITems | Select -First 1
        $namespace = (Get-ZNK8SClusterNamespace -K8SClusterId $cluster.id -Limit 400).Items | where {$_.Name -like "zn*"}
        (Get-ZNK8SClusterNamespaceOutboundNetworkPolicy -K8SClusterId $cluster.id -K8SNamespaceId $namespace.Id).Items.Count | Should -BeGreaterThan 0
    }
}

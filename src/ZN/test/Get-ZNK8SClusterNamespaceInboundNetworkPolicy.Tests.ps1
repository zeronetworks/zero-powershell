if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterNamespaceInboundNetworkPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterNamespaceInboundNetworkPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterNamespaceInboundNetworkPolicy' {
    It 'List' {
        $cluster = (Get-ZNK8SCluster).ITems | Select -First 1
        $namespace = (Get-ZNK8SClusterNamespace -ClusterId $cluster.id -Limit 400).Items | where {$_.Name -like "zn*"}
        (Get-ZNK8SClusterNamespaceInboundNetworkPolicy -ClusterId $cluster.id -NamespaceId $namespace.Id).Items.Count | Should -BeGreaterThan 0
    }
}

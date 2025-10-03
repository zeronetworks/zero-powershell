if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterNamespaceLabel'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterNamespaceLabel.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterNamespaceLabel' {
    It 'Get' {
        $k8sCluster = (Get-ZNK8SCluster).Items | Select-Object -First 1
        $k8sNamespace = (Get-ZNK8SClusterNamespace -K8SClusterId $k8sCluster.id).Items | Select-Object -First 1
        (Get-ZNK8SClusterNamespaceLabel -K8sClusterId $k8sCluster.id -K8SNamespaceId $k8sNamespace.Id).Items.Count | Should -BeGreaterThan 0
    }
}

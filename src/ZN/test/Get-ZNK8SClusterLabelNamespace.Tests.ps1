if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterLabelNamespace'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterLabelNamespace.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterLabelNamespace' {
    It 'List' {
        $k8sCluster = (Get-ZNK8SCluster).Items | Select-Object -First 1
        $k8sClusterLabel = (Get-ZNK8SClusterLabel -K8SClusterId $k8sCluster.id -Limit 400).Items | where {$_.Namespaces.Count -gt 0} | Select-Object -First 1
        (Get-ZNK8SClusterLabelNamespace -K8SClusterId $k8sCluster.Id -Label "$($k8sClusterLabel.key):$($k8sClusterLabel.value)").Items.Count | Should -BeGreaterThan 0
    }
}

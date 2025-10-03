if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterLabel'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterLabel.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterLabel' {
    It 'List' {
        $k8sCluster = (Get-ZNK8SCluster).Items | Select-Object -First 1
        (Get-ZNK8SClusterLabel -K8sClusterId $k8sCluster.Id).Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $k8sCluster = (Get-ZNK8SCluster).Items | Select-Object -First 1
        $k8sClusterLabel = (Get-ZNK8SClusterLabel -K8sClusterId $k8sCluster.Id).Items | Select-Object -First 1
        (Get-ZNK8SClusterLabel -K8sClusterId $k8sCluster.Id -Label "$($k8sClusterLabel.key):$($k8sClusterLabel.value)").EntityKey | Should -Not -BeNullOrEmpty
    }
}

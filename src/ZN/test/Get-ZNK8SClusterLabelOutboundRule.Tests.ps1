if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterLabelOutboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterLabelOutboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterLabelOutboundRule' {
    It 'List' {
        $k8sCluster = (Get-ZNK8SCluster).Items | where {$_.Name -eq $env.K8sCluster} | Select-Object -First 1
        $k8sClusterLabel = (Get-ZNK8SClusterLabel -K8sClusterId $k8sCluster.Id -limit 400).Items | where {$_.Value -eq "tcp-client"}
        $rules = Get-ZNK8SClusterLabelOutboundRule -K8sClusterId $k8sCluster.Id -Label ( $k8sClusterLabel.key+":"+$k8sClusterlabel.Value) -limit 400
        $rules.Items.Count | Should -BeGreaterThan 0
    }
}

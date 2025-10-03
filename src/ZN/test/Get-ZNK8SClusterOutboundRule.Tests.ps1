if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterOutboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterOutboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterOutboundRule' {
    It 'List' {
        $k8sCluster = (Get-ZNK8SCluster).Items | Select-Object -First 1
        (Get-ZNK8SClusterOutboundRule -K8sClusterId $k8sCluster.Id).Items.Count | Should -BeGreaterThan 0
    }
}

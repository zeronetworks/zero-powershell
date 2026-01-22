if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterWorkloadNetworkAnalysis'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterWorkloadNetworkAnalysis.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterWorkloadNetworkAnalysis' {
    It 'Get' {
        $k8sCluster = (Get-ZNK8SCluster).Items | where {$_.Name -eq "okd"} | Select-Object -First 1
        $k8sworkload = ((Get-ZNK8SClusterWorkload -K8SClusterId $k8sCluster.Id -Limit 400).Items | where {$_.Name -eq "tcp-client"})
        $netAnalysis = Get-ZNK8SClusterWorkloadNetworkAnalysis -K8SClusterId $k8sCluster.Id -K8SWorkloadId $k8sworkload.Id -Direction 2
        $netAnalysis.CountByPort | Should -beGreaterThan 0
    }
}

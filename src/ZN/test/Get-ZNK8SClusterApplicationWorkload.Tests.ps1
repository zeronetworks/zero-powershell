if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterApplicationWorkload'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterApplicationWorkload.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterApplicationWorkload' {
    It 'List' {
        $cluster = (Get-ZNK8SCluster).items[0]
        $application = ((Get-ZNK8SClusterApplication -K8SClusterId $cluster.Id).Items | where {$_.Workloads.Count -gt 0})[0]
        (Get-ZNK8SClusterApplicationWorkload -K8SClusterId $cluster.id -ApplicationName $application.Name).Count | Should -BeGreaterThan 0
    }
}

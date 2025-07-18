if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterWorkload'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterWorkload.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterWorkload' {
    It 'List' {
        $cluster = (Get-ZNK8SCluster).Items  | where {$_.Name -like "Openshift*"}
        (Get-ZNK8SClusterWorkload -K8SClusterId $cluster.id).Items.Count | Should -BeGreaterThan 0
    }
}

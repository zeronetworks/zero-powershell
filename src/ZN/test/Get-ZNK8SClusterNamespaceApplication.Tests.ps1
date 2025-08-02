if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterNamespaceApplication'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterNamespaceApplication.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterNamespaceApplication' {
    It 'Get' {
        $cluster = (Get-ZNK8SCluster).items[0]
        $namepace = ((Get-ZNK8SClusterNamespace -K8SClusterId $cluster.Id).Items | where {$_.ApplicationsList.Count -gt 0})[0]
        (Get-ZNK8SClusterNamespaceApplication -K8SClusterId $cluster.Id -K8SNamespaceId $namepace.Id).Count | Should -BeGreaterThan 0
    }
}

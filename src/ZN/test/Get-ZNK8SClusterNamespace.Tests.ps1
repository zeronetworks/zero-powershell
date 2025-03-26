if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterNamespace'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterNamespace.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterNamespace' {
    It 'List' {
        $cluster = (Get-ZNK8SCluster).ITems | Select -First 1
        (Get-ZNK8SClusterNamespace -ClusterId $cluster.id).Items.Count | Should -BeGreaterThan
    }

    It 'Get' {
        $cluster = (Get-ZNK8SCluster).ITems | Select -First 1
        $namespace = (Get-ZNK8SClusterNamespace -ClusterId $cluster.id).Items | Select -First 1
        $namespace = Get-ZNK8SClusterNamespace -ClusterId $cluster.id -NamespaceId $namespace.Id
        $namespace.EntityId | Should -Not -BeNullOrEmpty
    }
}

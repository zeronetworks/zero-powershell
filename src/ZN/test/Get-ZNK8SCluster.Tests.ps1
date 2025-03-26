if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SCluster'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SCluster.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SCluster' {
    It 'List' {
        (Get-ZNK8SCluster).Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $cluster = (Get-ZNK8SCluster).ITems | Select -First 1
        $cluster = Get-ZNK8SCluster -ClusterId $cluster.Id
        $cluster.Id | Should -Not -BeNullOrEmpty
    }
}

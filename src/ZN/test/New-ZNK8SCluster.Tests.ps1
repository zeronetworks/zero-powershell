if(($null -eq $TestName) -or ($TestName -contains 'New-ZNK8SCluster'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNK8SCluster.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNK8SCluster' {
    It 'CreateExpanded' {
        $cluster = New-ZNK8SCluster -Name "NewCluster"
        $cluster.ItemId | Should -Not -BeNullOrEmpty
        Remove-ZNK8SCluster -ClusterId $cluster.ItemId
    }
}

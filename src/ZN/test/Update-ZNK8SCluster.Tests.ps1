if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNK8SCluster'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNK8SCluster.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNK8SCluster' {
    It 'UpdateExpanded' {
        $cluster = New-ZNK8SCluster -Name "NewCluster"
        $updated = Update-ZNK8SCluster -ClusterId $cluster.ItemId -Name "NewClusterName"
        $updated.ItemName | Should -Be "NewClusterName"
        Remove-ZNK8SCluster -ClusterId $cluster.ItemId
    }
}

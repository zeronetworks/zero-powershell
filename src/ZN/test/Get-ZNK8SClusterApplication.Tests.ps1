if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterApplication'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterApplication.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterApplication' {
    It 'Get' {
        $cluster = (Get-ZNK8SCluster).items[0]
        (Get-ZNK8SClusterApplication -K8SClusterId $cluster.Id).Count | Should -BeGreaterThan 0
    }

    It 'GetViaIdentity' {
        $cluster = (Get-ZNK8SCluster).items[0]
        $application = (Get-ZNK8SClusterApplication -K8SClusterId $cluster.Id).Items[0]
        $getApplication = Get-ZNK8SClusterApplication -K8SClusterId $cluster.Id -ApplicationName $application.Name
        $getApplication.EntityName | Should -Not -BeNullOrEmpty
    }
}

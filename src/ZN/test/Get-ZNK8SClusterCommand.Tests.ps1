if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SClusterCommand'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SClusterCommand.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SClusterCommand' {
    It 'Get' {
        $cluster = (Get-ZNK8SCluster).ITems | Select -First 1
        (Get-ZNK8SClusterCommand -K8SClusterId $cluster.Id).InstallationCommand | Should -Not -BeNullOrEmpty
    }
}

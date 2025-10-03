if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SWorkload'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SWorkload.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SWorkload' {
    It 'List' {
        (Get-ZNK8SWorkload).Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $k8sWorkload = (Get-ZNK8SWorkload).Items | Select-Object -First 1
        (Get-ZNK8SWorkload -K8SWorkloadId $k8sWorkload.Id) | Should -Not -BeNullOrEmpty
    }
}

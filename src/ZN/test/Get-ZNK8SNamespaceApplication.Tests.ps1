if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SNamespaceApplication'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SNamespaceApplication.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SNamespaceApplication' {
    It 'Get' {
        $namepace = ((Get-ZNK8SNamespace).Items | where {$_.ApplicationsList.Count -gt 0})[0]
        (Get-ZNK8SNamespaceApplication -K8SNamespaceId $namepace.Id).Count | Should -BeGreaterThan 0
    }
}

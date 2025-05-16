if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SNamespace'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SNamespace.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SNamespace' {
    It 'List' {
        (Get-ZNK8SNamespace).Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $namespace = (Get-ZNK8SNamespace).Items | select -First 1
        $namespace = Get-ZNK8SNamespace -K8SNamespaceId $namespace.id
        $namespace.EntityId | Should -Not -BeNullOrEmpty
    }
}

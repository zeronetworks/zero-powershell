if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SNamespaceLabel'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SNamespaceLabel.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SNamespaceLabel' {
    It 'Get' {
        $k8sNamespace = (Get-ZNK8SNamespace ).Items | Select-Object -First 1
        (Get-ZNK8SNamespaceLabel -K8SNamespaceId $k8sNamespace.Id).Items.Count | Should -BeGreaterThan 0
    }
}

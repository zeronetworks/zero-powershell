if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNK8SNamespaceOutboundNetworkPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNK8SNamespaceOutboundNetworkPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNK8SNamespaceOutboundNetworkPolicy' {
    It 'List' {
        $namespace = (Get-ZNK8SNamespace -limit 400).Items | where {$_.Name -like "zn*"}
        (Get-ZNK8SNamespaceOutboundNetworkPolicy -NamespaceId $namespace.Id).Items.Count | Should -BeGreaterThan 0
    }
}

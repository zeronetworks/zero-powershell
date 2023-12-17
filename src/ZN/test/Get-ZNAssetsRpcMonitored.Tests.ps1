if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetsRpcMonitored'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetsRpcMonitored.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetsRpcMonitored' {
    It 'List' {
        (Get-ZNAssetsRpcMonitored -Order asc -OrderColumns name).Count | Should -BeGreaterThan 0
    }
}

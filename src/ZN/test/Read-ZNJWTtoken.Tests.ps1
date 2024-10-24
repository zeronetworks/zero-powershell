if(($null -eq $TestName) -or ($TestName -contains 'Read-ZNJWTtoken'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Read-ZNJWTtoken.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Read-ZNJWTtoken' {
    It '__AllParameterSets' {
        (Read-ZNJWTtoken -token $env:ZNApiKey).aud.Split(".")[1] | Should -Be "zeronetworks"
    }
}

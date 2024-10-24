if(($null -eq $TestName) -or ($TestName -contains 'Invoke-ZNEncodeEntityIPRange'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNEncodeEntityIPRange.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-ZNEncodeEntityIPRange' {
    It 'Encode' {
        { Invoke-ZNEncodeEntityIPRange -IPRange 1.1.1.1-1.1.1.2 } | Should -Not -BeNullOrEmpty
    }
}

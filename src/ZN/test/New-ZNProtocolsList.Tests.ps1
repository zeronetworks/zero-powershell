if(($null -eq $TestName) -or ($TestName -contains 'New-ZNProtocolsList'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNProtocolsList.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNProtocolsList' {
    It 'Protocol' {
        (New-ZNProtocolsList -Protocol 6 -ports 111).LocalPorts | Should -Not -BeNullOrEmpty
    }

    It 'Empty' {
        (New-ZNProtocolsList -Empty).LocalPorts | Should -BeNullOrEmpty
    }
}

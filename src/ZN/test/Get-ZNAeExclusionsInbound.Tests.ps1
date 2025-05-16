if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAeExclusionsInbound'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAeExclusionsInbound.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAeExclusionsInbound' {
    It 'List' {
        (Get-ZNAeExclusionsInbound).Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $aeExclusion = (Get-ZNAeExclusionsInbound).Items | Select-Object -First 1
        $aeExclusion.id | Should -Not -BeNullOrEmpty
    }
}

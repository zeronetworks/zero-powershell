if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAeExclusionsOutbound'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAeExclusionsOutbound.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAeExclusionsOutbound' {
    It 'List' {
        (Get-ZNAeExclusionsOutbound).Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $aeExclusion = (Get-ZNAeExclusionsOutbound).Items | Select-Object -First 1
        $aeExclusion.id | Should -Not -Be $null
    }
}

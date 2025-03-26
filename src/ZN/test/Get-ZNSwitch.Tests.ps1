if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNSwitch'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNSwitch.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNSwitch' {
    It 'List' {
        (Get-ZNSwitch).Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $switch = (Get-ZNSwitch).Items | select -First 1
        $switch = Get-ZNSwitch -SwitchId $switch.id
        $switch.EntityId | Should -Not -BeNullOrEmpty
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNSwitchInterface'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNSwitchInterface.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNSwitchInterface' {
    It 'List' {
        $switch = (Get-ZNSwitch).Items | select -First 1
        (Get-ZNSwitchInterface -SwitchId $switch.Id).Items.Count | Should -BeGreaterThan 0
    }
}

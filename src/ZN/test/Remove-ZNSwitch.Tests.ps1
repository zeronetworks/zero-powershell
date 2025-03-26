if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNSwitch'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNSwitch.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNSwitch' {
    It 'Delete' {
        $switch = New-ZNSwitch -Ip 1.1.1.10 -MonitorInterfaceOnOtAdded -MonitorOnInterfaceDiscovery -Name "new-switch" -Password "test" -Username "test" -Type 1
        { Remove-ZNSwitch -SwitchId $switch.SwitchId1 } | Should -Not -Throw
    }
}

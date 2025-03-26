if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSwitch'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSwitch.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSwitch' {
    It 'UpdateExpanded' {
        $switch = New-ZNSwitch -IP '192.168.250.2' -MonitorInterfaceOnOtAdded -MonitorOnInterfaceDiscovery -Name "test" -Password 'testP@ssw0rd' -Type 1 -Username'zero'
        { Update-ZNSwitch -SwitchId $switch.SwitchId1 -IP '192.168.250.2' -MonitorInterfaceOnOtAdded -MonitorOnInterfaceDiscovery -Name 'test' -Password 'testP@ssw0rd2' -Type 1 -Username 'zero' } | Should -Not -Throw
        Remove-ZNSwitch -SwitchId $switch.SwitchId1
    }
}

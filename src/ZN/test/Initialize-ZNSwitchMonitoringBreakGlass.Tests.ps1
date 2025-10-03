if(($null -eq $TestName) -or ($TestName -contains 'Initialize-ZNSwitchMonitoringBreakGlass'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Initialize-ZNSwitchMonitoringBreakGlass.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Initialize-ZNSwitchMonitoringBreakGlass' {
    It 'ActivateExpanded' {
        $switch = (Get-ZNSwitch).Items | Select-Object -First 1
        { Initialize-ZNSwitchMonitoringBreakGlass -SwitchId $switch.Id -MonitoringBreakGlassEnabled:$true } | Should -Not -Throw
        Initialize-ZNSwitchMonitoringBreakGlass -SwitchId $switch.Id -MonitoringBreakGlassEnabled:$false
    }
}

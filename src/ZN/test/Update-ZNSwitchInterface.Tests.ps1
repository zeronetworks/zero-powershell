if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSwitchInterface'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSwitchInterface.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSwitchInterface' {
    It 'UpdateExpanded' {
        $switch = (Get-ZNSwitch).Items | where {$_.Name -eq 'eve'}
        $interface = (Get-ZNSwitchInterface -SwitchId $switch.Id).Items | select -Last 1
        if($interface.IsMonitored -eq $false){
            $updated = $true
        } else {
            $updated = $false
        }
        Update-ZNSwitchInterface -SwitchId $switch.Id -Interfaces @($interface.Name) -ShouldMonitor:$updated
        $interface = (Get-ZNSwitchInterface -SwitchId $switch.Id).Items | select -Last 1
        $interface.IsMonitored | Should -Be $updated
    }
}

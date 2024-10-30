if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNSettingsMaintenanceWindow'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNSettingsMaintenanceWindow.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNSettingsMaintenanceWindow' {
    It 'Delete' {
        $setting = New-ZNSettingsMaintenanceWindow  -IsDefault:$false -Name "MaintWindowTest" -StartTime 1 -Weekday 1
        { Remove-ZNSettingsMaintenanceWindow -MaintenanceWindowId $setting.ItemId} | Should -Not -Throw
    }
}

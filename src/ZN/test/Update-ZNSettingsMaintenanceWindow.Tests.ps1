if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsMaintenanceWindow'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsMaintenanceWindow.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsMaintenanceWindow' {
    It 'UpdateExpanded' {
        $setting = New-ZNSettingsMaintenanceWindow  -IsDefault:$false -Name "MaintWindowTest" -StartTime 1 -Weekday 1
        $updatedSetting = Update-ZNSettingsMaintenanceWindow -MaintenanceWindowId $setting.ItemId -Name "MaintWindowTestUpdated" -startTime 2 -Weekday 2
        
        $updatedsetting.ItemName | Should -Be "MaintWindowTestUpdated"
        Remove-ZNSettingsMaintenanceWindow -MaintenanceWindowId $setting.ItemId
    }
}

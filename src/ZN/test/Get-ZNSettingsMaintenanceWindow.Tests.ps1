if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNSettingsMaintenanceWindow'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNSettingsMaintenanceWindow.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNSettingsMaintenanceWindow' {
    It 'List' {
       (Get-ZNSettingsMaintenanceWindow).Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $settings = Get-ZNSettingsMaintenanceWindow | Select -First 1
        $setting = Get-ZNSettingsMaintenanceWindow -MaintenanceWindowId $settings.Id
        $setting.ItemId | Should -Not -BeNullOrEmpty
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsAntitampering'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsAntitampering.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsAntitampering' {
    It 'UpdateExpanded' {
        $setting = Get-ZNSettingsAntitampering
        if($setting.ConfigAuditCooldownMinutes -eq 5){
            $updatedSetting = 7
        } else {
            $updatedSetting = 5
        }
        Update-ZNSettingsAntitampering -AuditCooldownMinutes $updatedSetting
        $updated = Get-ZNSettingsAntitampering
        $updated.ConfigAuditCooldownMinutes | Should -Be $updatedSetting
    }
}

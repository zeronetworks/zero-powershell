if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsK8SApplicationsLabel'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsK8SApplicationsLabel.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsK8SApplicationsLabel' {
    It 'UpdateExpanded' {
        Update-ZNSettingsK8SApplicationsLabel -OverrideApplicationLabel "application"
        $updatedSetting = (Get-ZNSettingsK8SApplicationsLabel).Label
        $updatedSetting | Should -Be "application"
        Update-ZNSettingsK8SApplicationsLabel -OverrideApplicationLabel "app"
    }
}

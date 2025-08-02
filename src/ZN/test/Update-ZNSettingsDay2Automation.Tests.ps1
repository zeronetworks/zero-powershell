if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsDay2Automation'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsDay2Automation.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsDay2Automation' {
    It 'UpdateExpanded' {
        Update-ZNSettingsDay2Automation -State:$true
        $updatedSetting = (Get-ZNSettingsDay2Automation).State
        $updatedSetting | Should -Be $true
        Update-ZNSettingsDay2Automation -State:$false
    }
}

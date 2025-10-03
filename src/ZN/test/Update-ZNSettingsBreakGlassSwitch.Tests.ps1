if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsBreakGlassSwitch'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsBreakGlassSwitch.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsBreakGlassSwitch' {
    It 'UpdateExpanded' {
        Update-ZNSettingsBreakGlassSwitch -StopMonitoring:$true
        $updatedSetting = Get-ZNSettingsBreakGlassSwitch
        $updatedSetting.StopMonitoring | Should -Be $true
        Update-ZNSettingsBreakGlassSwitch -StopMonitoring:$false
    }
}

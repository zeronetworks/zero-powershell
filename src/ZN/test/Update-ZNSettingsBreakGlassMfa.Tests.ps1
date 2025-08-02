if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsBreakGlassMfa'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsBreakGlassMfa.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsBreakGlassMfa' {
    It 'UpdateExpanded' {
        Update-ZNSettingsBreakGlassMfa -IsBreakGlassMfaEnabled:$true
        $updatedSetting = (Get-ZNSettingsBreakGlassMfa).Enabled
        $updatedSetting | Should -Be $true
        Update-ZNSettingsBreakGlassMfa -IsBreakGlassMfaEnabled:$false
    }
}

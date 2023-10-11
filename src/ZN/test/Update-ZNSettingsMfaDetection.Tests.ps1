if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsMfaDetection'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsMfaDetection.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsMfaDetection' {
    It 'UpdateExpanded' {
        { Update-ZNSettingsMfaDetection -TimeoutMinutes 10 } | Should -Not -Throw
        Update-ZNSettingsMfaDetection -TimeoutMinutes 5
    }
}

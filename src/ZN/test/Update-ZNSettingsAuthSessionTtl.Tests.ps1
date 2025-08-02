if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsAuthSessionTtl'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsAuthSessionTtl.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsAuthSessionTtl' {
    It 'UpdateExpanded' {
        Update-ZNSettingsAuthSessionTtl -PortalTokenTtl 1440
        $updatedSetting = (Get-ZNSettingsAuthSessionTtl).ItemPortalTokenTtl
        $updatedSetting | Should -Be 1440
        Update-ZNSettingsAuthSessionTtl -PortalTokenTtl 8640
    }
}

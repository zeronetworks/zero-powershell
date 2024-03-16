if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsServersTrustedInternet'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsServersTrustedInternet.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsServersTrustedInternet' {
    It 'UpdateExpanded' {
        $setting = Get-ZNSettingsServersTrustedInternet
        $newPorts = New-ZNPortsList -Protocol TCP -Ports 443
        { Update-ZNSettingsServersTrustedInternet -Ports @($newPorts) } | Should -Not -Throw
        Update-ZNSettingsServersTrustedInternet -Ports @($setting)
    }
}

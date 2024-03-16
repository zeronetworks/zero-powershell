if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsClientsTrustedInternet'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsClientsTrustedInternet.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsClientsTrustedInternet' {
    It 'UpdateExpanded' {
        $setting = Get-ZNSettingsClientsTrustedInternet
        $newPorts = New-ZNPortsList -Protocol TCP -Ports 443
        { Update-ZNSettingsClientsTrustedInternet -Ports @($newPorts) } | Should -Not -Throw
        Update-ZNSettingsClientsTrustedInternet -Ports $setting
    }
}

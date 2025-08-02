if(($null -eq $TestName) -or ($TestName -contains 'Test-ZNSettingsPamCyberarkConnection'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Test-ZNSettingsPamCyberarkConnection.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Test-ZNSettingsPamCyberarkConnection' {
    It 'TestExpanded' {
        $pam = Get-ZNSettingsPamCyberark
        (Test-ZNSettingsPamCyberarkConnection -Address $pam.Address -Password "testtest" -UserName $pam.UserName -CyberArkLogonType $pam.CyberArkLogonType -SecretsType $pam.SecretsType).Success | Should -Not -BeNullOrEmpty
    }
}

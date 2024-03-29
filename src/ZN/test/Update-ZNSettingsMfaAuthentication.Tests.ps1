if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsMfaAuthentication'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsMfaAuthentication.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsMfaAuthentication' {
    It 'UpdateExpanded' {
        { Update-ZNSettingsMfaAuthentication -IsRequiresAuth:$false -IsSsoForceAuth:$false -TokenTtl 1440 } | Should -Not -Throw
        Update-ZNSettingsMfaAuthentication -IsRequiresAuth:$true -IsSsoForceAuth:$false -TokenTtl 1440
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsIdentityLogoff'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsIdentityLogoff.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsIdentityLogoff' {
    It 'UpdateExpanded' {
        Update-ZNSettingsIdentityLogoff -EnforceLogoffDeniedUsers:$true
        $updatedSetting = (Get-ZNSettingsIdentityLogoff).EnforceLogoffDeniedUsers
        $updatedSetting | Should -Be $true
        Update-ZNSettingsIdentityLogoff -EnforceLogoffDeniedUsers:$false
    }
}

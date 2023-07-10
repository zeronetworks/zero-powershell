if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsAuth'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsAuth.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsAuth' {
    It 'PutExpanded' {
        $setting = Get-ZNSettingsAuth
        if($setting -eq 10080){
            $newsetting = 8640
        } else {
            $newsetting = 10080
        }
        Update-ZNSettingsAuth -PortalTokenTtl $newsetting
        $updatedSetting = Get-ZNSettingsAuth
        $updatedSetting | Should -Be $newsetting
    }
}

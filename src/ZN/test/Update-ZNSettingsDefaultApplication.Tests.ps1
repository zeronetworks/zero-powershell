if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsDefaultApplication'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsDefaultApplication.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsDefaultApplication' {
    It 'UpdateExpanded' {
        $setting = (Get-ZNSettingsDefaultApplication).Application
        if($setting -eq 1){
            $newsetting = 2
        }else{
            $newsetting = 1
        }
        Update-ZNSettingsDefaultApplication -Application $newsetting
        $updatedSetting = (Get-ZNSettingsDefaultApplication).Application
        $updatedSetting | Should -Be $newsetting
    }
}

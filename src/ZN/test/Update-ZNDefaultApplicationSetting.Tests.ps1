if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNDefaultApplicationSetting'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNDefaultApplicationSetting.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNDefaultApplicationSetting' {
    It 'UpdateExpanded' {
        $setting = Get-ZNDefaultApplicationSetting
        if($setting -eq 1){
            $newsetting = 2
        }else{
            $newsetting = 1
        }
        Update-ZNDefaultApplicationSetting -Application $newsetting
        $updatedSetting = Get-ZNDefaultApplicationSetting
        $updatedSetting | Should -Be $newsetting
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNNotificationSetting'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNNotificationSetting.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNNotificationSetting' {
    It 'UpdateExpanded' {
        $setting = Get-ZNNotificationSetting
        if($setting.AssetUnprotected -eq $true){
            $newsetting = $false
        }else{
            $newsetting = $true
        }
        $updatedSetting = Update-ZNNotificationSetting -AssetProtected:$setting.AssetProtected -AssetQueued:$setting.AssetQueued -AssetUnprotected:$newsetting
        $updatedSetting.AssetUnprotected | Should -Be $newsetting
    }
}

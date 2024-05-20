if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsInactiveAsset'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsInactiveAsset.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsInactiveAsset' {
    It 'UpdateExpanded' {
        $settings = (Get-ZNSettingsInactiveAsset).LastActiveDurationInMonths
        if($settings -eq 8){
            $newvalue = 9
        } else {
            $newvalue = 8
        }
        Update-ZNSettingsInactiveAsset -LastActiveDurationInMonths $newvalue
        $updatedSetting = (Get-ZNSettingsInactiveAsset).LastActiveDurationInMonths
        $updatedSetting | Should -Be $newvalue
    }
}

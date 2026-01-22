if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsAeRuleReviewCleanup'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsAeRuleReviewCleanup.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsAeRuleReviewCleanup' {
    It 'UpdateExpanded' {
        $setting = Get-ZNSettingsAeRuleReviewCleanup
        if($setting -eq "OFF"){
            $newSetting = "ON"
        } else{
            $newSetting = "ON_REVIEW"
        }
        Update-ZNSettingsAeRuleReviewCleanup -Status $newSetting
        $updatedSetting = Get-ZNSettingsAeRuleReviewCleanup
        $updatedSetting | Should -Be $newSetting
    }
}

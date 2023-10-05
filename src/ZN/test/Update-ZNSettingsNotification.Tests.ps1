if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsNotification'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsNotification.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsNotification' {
    It 'UpdateExpanded' {
        $settings = Get-ZNSettingsNotification
        $settings.AssetUnprotected = $false
        { Update-ZNSettingsNotification -AssetPostponed:$settings.AssetPostponed -AssetProtected:$settings.AssetProtected -AssetQueued:$settings.AssetQueued -AssetUnprotected:$settings.AssetUnprotected } | Should -Not -Throw
        $settings.AssetUnprotected = $true
        Update-ZNSettingsNotification -AssetPostponed:$settings.AssetPostponed -AssetProtected:$settings.AssetProtected -AssetQueued:$settings.AssetQueued -AssetUnprotected:$settings.AssetUnprotected
    }
}

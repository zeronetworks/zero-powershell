if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsClusterStrategy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsClusterStrategy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsClusterStrategy' {
    It 'SetExpanded' {
        $settings = get-ZNSettingsClusterStrategy
        if($settings.Strategy -eq 1) {
            $newStrategy = 2
        } else {
            $newStrategy = 1
        }
        { Update-ZNSettingsClusterStrategy -PreferredDeploymentId $settings.PreferredDeploymentId -Strategy $newStrategy } | Should -Not -Throw
    }
}

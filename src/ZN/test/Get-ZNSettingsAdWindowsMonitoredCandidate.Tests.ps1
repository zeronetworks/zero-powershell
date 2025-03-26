if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNSettingsAdWindowsMonitoredCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNSettingsAdWindowsMonitoredCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNSettingsAdWindowsMonitoredCandidate' {
    It 'Get' {
        $forest = Get-ZNSettingsAd | select -first 1
        (Get-ZNSettingsAdWindowsMonitoredCandidate -ForestId $forest.ForestId).Items | Should -BeGreaterThan 0
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'New-ZNSettingsConnectClientFreezePeriod'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNSettingsConnectClientFreezePeriod.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNSettingsConnectClientFreezePeriod' {
    It 'CreateExpanded' {
        $id = New-ZNSettingsConnectClientFreezePeriod -Description "poshtestget" -StartTime (ConvertTo-ZNEpochMS (Get-date).AddDays(30)) -EndTime (ConvertTo-ZNEpochMS (Get-date).AddDays(45))
        $id.FreezeWindowId | Should -Not -BeNullOrEmpty
        Remove-ZNSettingsConnectClientFreezePeriod -FreezePeriodId $id.FreezeWindowId
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNSettingsConnectServersFreezePeriod'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNSettingsConnectServersFreezePeriod.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNSettingsConnectServersFreezePeriod' {
    It 'Delete' {
        $id = New-ZNSettingsConnectServersFreezePeriod -Description "poshtestremove" -StartTime (ConvertTo-ZNEpochMS (Get-date).AddDays(30)) -EndTime (ConvertTo-ZNEpochMS (Get-date).AddDays(45))
        { Remove-ZNSettingsConnectServersFreezePeriod -FreezePeriodId $id.FreezeWindowId } | Should -Not -Throw
    }
}

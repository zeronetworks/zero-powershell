if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNSettingsCloudConnectorFreezePeriod'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNSettingsCloudConnectorFreezePeriod.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNSettingsCloudConnectorFreezePeriod' {
    It 'Delete' {
        $id = New-ZNSettingsCloudConnectorFreezePeriod -Description "poshtestremove" -StartTime (ConvertTo-ZNEpochMS (Get-date).AddDays(30)) -EndTime (ConvertTo-ZNEpochMS (Get-date).AddDays(45))
        { Remove-ZNSettingsCloudConnectorFreezePeriod -FreezePeriodId $id.FreezeWindowId } | Should -Not -Throw
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNSettingsCloudConnectorFreezePeriod'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNSettingsCloudConnectorFreezePeriod.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNSettingsCloudConnectorFreezePeriod' {
    It 'List' {
        $id = New-ZNSettingsCloudConnectorFreezePeriod -Description "poshtestget" -StartTime (ConvertTo-ZNEpochMS (Get-date).AddDays(30)) -EndTime (ConvertTo-ZNEpochMS (Get-date).AddDays(45))
        (Get-ZNSettingsCloudConnectorFreezePeriod).Count | Should -beGreaterThan 0
        Remove-ZNSettingsCloudConnectorFreezePeriod -CloudConnectorFreezePeriodId $id.FreezeWindowId
    }
}

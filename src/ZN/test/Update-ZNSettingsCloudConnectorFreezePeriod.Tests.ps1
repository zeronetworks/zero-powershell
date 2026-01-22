if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsCloudConnectorFreezePeriod'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsCloudConnectorFreezePeriod.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsCloudConnectorFreezePeriod' {
    It 'UpdateExpanded' {
        $id = New-ZNSettingsCloudConnectorFreezePeriod -Description "poshtestupdate" -StartTime (ConvertTo-ZNEpochMS (Get-date).AddDays(30)) -EndTime (ConvertTo-ZNEpochMS (Get-date).AddDays(45))
        Update-ZNSettingsCloudConnectorFreezePeriod -FreezePeriodId $id.FreezeWindowId -Description "poshtestupdatedesc" -StartTime (ConvertTo-ZNEpochMS (Get-date).AddDays(31)) -EndTime (ConvertTo-ZNEpochMS (Get-date).AddDays(46))
        $freezePeriod = Get-ZNSettingsCloudConnectorFreezePeriod | where {$_.FreezeWindowId -eq $id.FreezeWindowId}
        $freezePeriod.Description | Should -Be "poshtestupdatedesc"
        Remove-ZNSettingsCloudConnectorFreezePeriod -FreezePeriodId $freezePeriod.FreezeWindowId
    }
}

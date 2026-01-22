if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsSegmentServersFreezePeriod'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsSegmentServersFreezePeriod.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsSegmentServersFreezePeriod' {
    It 'UpdateExpanded' {
        $id = New-ZNSettingsSegmentServersFreezePeriod -Description "poshtestupdate" -StartTime (ConvertTo-ZNEpochMS (Get-date).AddDays(30)) -EndTime (ConvertTo-ZNEpochMS (Get-date).AddDays(45))
        Update-ZNSettingsSegmentServersFreezePeriod -FreezePeriodId $id.FreezeWindowId -Description "poshtestupdatedesc" -StartTime (ConvertTo-ZNEpochMS (Get-date).AddDays(31)) -EndTime (ConvertTo-ZNEpochMS (Get-date).AddDays(46))
        $freezePeriod = Get-ZNSettingsSegmentServersFreezePeriod | where {$_.FreezeWindowId -eq $id.FreezeWindowId}
        $freezePeriod.Description | Should -Be "poshtestupdatedesc"
        Remove-ZNSettingsSegmentServersFreezePeriod -FreezePeriodId $freezePeriod.FreezeWindowId
    }
}

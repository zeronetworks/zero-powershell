if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNSettingsMfaCache'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNSettingsMfaCache.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNSettingsMfaCache' {
    It 'Delete' {
        $group = (Get-ZNGroup -Search Users).Items | where {$_.Domain -eq "posh.local" -and $_.Name -eq "Users"}
        $policy = New-ZNSettingsMfaCache -AssetLimit 5 -EntityId $group.Id -TtlMinutes 720
        { Remove-ZNSettingsMfaCache -EntityId $policy.ItemEntityId } | Should -Not -Throw
    }
}

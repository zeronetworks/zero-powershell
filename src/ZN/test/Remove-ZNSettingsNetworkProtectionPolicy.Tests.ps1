if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNSettingsNetworkProtectionPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNSettingsNetworkProtectionPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNSettingsNetworkProtectionPolicy' {
    It 'Delete' {
        $group = (Get-ZNGroup -Search servers).Items | where {$_.Domain -eq "system" -and $_.Name -eq "Servers"}
        $policy = New-ZNSettingsNetworkProtectionPolicy -ExistingMembersLearningDays 30 -GroupId $group.id -NewMembersLearningDays 30 -Enabled:$false
        {Remove-ZNSettingsNetworkProtectionPolicy -ProtectionPolicyId $policy.ItemId } | Should -Not -Throw
    }
}

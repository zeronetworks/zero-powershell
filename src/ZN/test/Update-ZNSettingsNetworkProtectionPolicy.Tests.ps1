if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsNetworkProtectionPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsNetworkProtectionPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsNetworkProtectionPolicy' {
    It 'UpdateExpanded' {
        $group = (Get-ZNGroup -Search servers).Items | where {$_.Domain -eq "system" -and $_.Name -eq "Servers"}
        $policy = New-ZNSettingsNetworkProtectionPolicy -ExistingMembersLearningDays 30 -GroupId $group.id -NewMembersLearningDays 30 -Enabled:$false
        $updatedPolicy = Update-ZNSettingsNetworkProtectionPolicy -ProtectionPolicyId $policy.ItemId -ExistingMembersLearningDays 60 -NewMembersLearningDays 60 -Enabled:$policy.Enabled -PolicyType $policy.ItemPolicyType
        $updatedPolicy.ItemExistingMembersLearningDays | Should -Be 60
        Remove-ZNSettingsNetworkProtectionPolicy -ProtectionPolicyId $updatedPolicy.ItemId
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNNetworkOnboardingPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNNetworkOnboardingPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNNetworkOnboardingPolicy' {
    It 'UpdateExpanded' {
        $group = (Get-ZNNetworkOnboardingPoliciesGroupCandidate -Search "Account Operators").Items | select -First 1
        $policy = New-ZNNetworkOnboardingPolicy -ExistingMembersLearningDays 30 -GroupId $group.id -NewMembersLearningDays 30 -Description "Powershell test"  -Enabled:$false
        $updatedPolicy = Update-ZNNetworkOnboardingPolicy -OnboardingPolicyId $policy.ItemId -ExistingMembersLearningDays 60 -NewMembersLearningDays 60
        $updatedPolicy.ItemExistingMembersLearningDays | Should -Be 60
        Remove-ZNNetworkOnboardingPolicy -OnboardingPolicyId $policy.ItemId
    }
}

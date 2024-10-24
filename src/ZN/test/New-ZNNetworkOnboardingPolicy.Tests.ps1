if(($null -eq $TestName) -or ($TestName -contains 'New-ZNNetworkOnboardingPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNNetworkOnboardingPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNNetworkOnboardingPolicy' {
    It 'CreateExpanded' {
        $group = (Get-ZNIdentityOnboardingPoliciesGroupCandidate -Search "Account Operators").Items | select -First 1
        $policy = New-ZNNetworkOnboardingPolicy -ExistingMembersLearningDays 30 -GroupId $group.id -NewMembersLearningDays 30 -Description "Powershell test"  -Enabled:$false
        $policy.ItemId | Should -Not -BeNullOrEmpty
        Remove-ZNNetworkOnboardingPolicy -OnboardingPolicyId $policy.ItemId
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'New-ZNIdentityOnboardingPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNIdentityOnboardingPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNIdentityOnboardingPolicy' {
    It 'CreateExpanded' {
        $group = (Get-ZNIdentityOnboardingPoliciesGroupCandidate -Search "Account Operators").Items | select -First 1
        $policy = New-ZNIdentityOnboardingPolicy -ExistingMembersLearningDays 30 -GroupId $group.id -NewMembersLearningDays 30 -Description "Powershell test"  -Enabled:$false
        $policy.ItemId | Should -Not -BeNullOrEmpty
        Remove-ZNIdentityOnboardingPolicy -OnboardingPolicyId $policy.ItemId
    }
}

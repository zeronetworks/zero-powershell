if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNIdentityOnboardingPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNIdentityOnboardingPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNIdentityOnboardingPolicy' {
    It 'UpdateExpanded' {
        $group = (Get-ZNIdentityOnboardingPoliciesGroupCandidate -Search "Account Operators").Items | select -First 1
        $policy = New-ZNIdentityOnboardingPolicy -ExistingMembersLearningDays 30 -GroupId $group.id -NewMembersLearningDays 30 -Description "Powershell test"  -Enabled:$false
        $updatedPolicy = Update-ZNIdentityOnboardingPolicy -OnboardingPolicyId $policy.ItemId -ExistingMembersLearningDays 60 -NewMembersLearningDays 60
        $updatedPolicy.ItemExistingMembersLearningDays | Should -Be 60
        Remove-ZNIdentityOnboardingPolicy -OnboardingPolicyId $policy.ItemId
    }
}

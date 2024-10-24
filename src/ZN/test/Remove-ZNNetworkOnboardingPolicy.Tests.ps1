if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNNetworkOnboardingPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNNetworkOnboardingPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNNetworkOnboardingPolicy' {
    It 'Delete' {
        $group = (Get-ZNNetworkOnboardingPoliciesGroupCandidate -Search "Account Operators").Items | select -First 1
        $policy = New-ZNNetworkOnboardingPolicy -ExistingMembersLearningDays 30 -GroupId $group.id -NewMembersLearningDays 30 -Description "Powershell test"  -Enabled:$false
        { Remove-ZNNetworkOnboardingPolicy -OnboardingPolicyId $policy.ItemId } | Should -Not -Throw
    }
}

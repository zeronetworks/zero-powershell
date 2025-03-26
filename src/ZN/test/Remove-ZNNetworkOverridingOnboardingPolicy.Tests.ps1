if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNNetworkOverridingOnboardingPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNNetworkOverridingOnboardingPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNNetworkOverridingOnboardingPolicy' {
    It 'DeleteExpanded' {
        $group = (Get-ZNNetworkOverridingOnboardingPoliciesGroupCandidate).Items | select -First 1
        Update-ZNNetworkOverridingOnboardingPolicy -MemberIds @($group.id)
        { Remove-ZNNetworkOverridingOnboardingPolicy -MemberIds @($group.id) } | Should -Not -Throw
    }
}

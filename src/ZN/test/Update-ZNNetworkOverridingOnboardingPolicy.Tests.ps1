if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNNetworkOverridingOnboardingPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNNetworkOverridingOnboardingPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNNetworkOverridingOnboardingPolicy' {
    It 'SetExpanded' {
        $group = (Get-ZNNetworkOverridingOnboardingPoliciesGroupCandidate).Items | select -First 1
        { Update-ZNNetworkOverridingOnboardingPolicy -MemberIds @($group.Id) } | Should -Not -Throw
        Remove-ZNNetworkOverridingOnboardingPolicy -MemberIds @($group.Id)
    }
}

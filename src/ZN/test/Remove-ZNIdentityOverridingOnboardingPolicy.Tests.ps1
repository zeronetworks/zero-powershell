if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNIdentityOverridingOnboardingPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNIdentityOverridingOnboardingPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNIdentityOverridingOnboardingPolicy' {
    It 'DeleteExpanded' {
        $group = (Get-ZNIdentityOverridingOnboardingPoliciesGroupCandidate).Items | select -First 1
        Update-ZNIdentityOverridingOnboardingPolicy -MemberIds @($group.id)
        { Remove-ZNIdentityOverridingOnboardingPolicy -MemberIds @($group.id) } | Should -Not -Throw
    }
}

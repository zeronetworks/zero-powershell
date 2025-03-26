if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNNetworkOverridingOnboardingPoliciesGroupCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNNetworkOverridingOnboardingPoliciesGroupCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNNetworkOverridingOnboardingPoliciesGroupCandidate' {
    It 'List' {
        (Get-ZNNetworkOverridingOnboardingPoliciesGroupCandidate).ITems.Count | Should -BeGreaterThan 0
    }
}

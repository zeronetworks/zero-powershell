if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNOnboardingPolicyLearningConfig'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNOnboardingPolicyLearningConfig.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNOnboardingPolicyLearningConfig' {
    It 'Get' {
        (Get-ZNOnboardingPolicyLearningConfig).AllowQueueForever | Should -Not -BeNullOrEmpty
    }
}
